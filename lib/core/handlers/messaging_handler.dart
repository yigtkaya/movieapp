import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

/// Base notification handler interface
abstract interface class NotificationHandler {
  Future<void> initialize();
  Future<void> registerDevice();
  Future<void> unregisterDevice();
  Future<String?> getToken();
}

/// Firebase Cloud Messaging implementation
final class FirebaseMessagingHandler implements NotificationHandler {
  FirebaseMessagingHandler._();
  static FirebaseMessagingHandler? _instance;
  static FirebaseMessagingHandler get instance => _instance ??= FirebaseMessagingHandler._();

  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  void Function(Map<String, dynamic>)? onMessageCallback;

  @override
  Future<void> initialize() async {
    await _firebaseMessaging.requestPermission();

    try {
      final token = await _firebaseMessaging.getToken();

      debugPrint('FCM Token: $token');

      // Set up message handlers
      FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
      FirebaseMessaging.onMessage.listen(_handleMessage);
      _firebaseMessaging.onTokenRefresh.listen(_onTokenRefresh);

      // save user to topic
      await _firebaseMessaging.subscribeToTopic('users');
    } catch (e) {
      debugPrint('Error initializing Firebase Messaging: $e');
    }
  }

  @override
  Future<String?> getToken() async {
    if (Platform.isIOS) {
      return _firebaseMessaging.getAPNSToken();
    }
    return _firebaseMessaging.getToken();
  }

  void _handleMessage(RemoteMessage message) {
    debugPrint('Received FCM message: ${message.data}');
    onMessageCallback?.call(message.data);
  }

  void _onTokenRefresh(String token) {
    debugPrint('FCM Token refreshed: $token');
  }

  @override
  Future<void> registerDevice() async {
    // Firebase automatically handles device registration
  }

  @override
  Future<void> unregisterDevice() async {
    try {
      await _firebaseMessaging.deleteToken();
    } catch (e) {
      debugPrint('Error unregistering Firebase device: $e');
    }
  }
}

/// Local notification handler for displaying notifications
final class LocalNotificationHandler {
  LocalNotificationHandler._();
  static LocalNotificationHandler? _instance;
  static LocalNotificationHandler get instance => _instance ??= LocalNotificationHandler._();

  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  Future<void> initialize() async {
    try {
      const initializationSettingsAndroid = AndroidInitializationSettings('@mipmap/ic_launcher');
      const initializationSettingsIOS = DarwinInitializationSettings();
      const initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid,
        iOS: initializationSettingsIOS,
      );

      await _flutterLocalNotificationsPlugin.initialize(
        initializationSettings,
        onDidReceiveNotificationResponse: _onLocalNotificationTapped,
      );

      await _requestIOSPermissions();
    } catch (e) {
      debugPrint('Error initializing local notifications: $e');
    }
  }

  Future<void> _requestIOSPermissions() async {
    await _flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<IOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );
  }

  Future<void> showNotification(Map<String, dynamic> message) async {
    try {
      const androidDetails = AndroidNotificationDetails(
        'default_channel',
        'Default Channel',
        channelDescription: 'Default notification channel',
        importance: Importance.max,
        priority: Priority.high,
      );

      const iosDetails = DarwinNotificationDetails(
        presentAlert: true,
        presentBadge: true,
        presentSound: true,
      );

      const notificationDetails = NotificationDetails(
        android: androidDetails,
        iOS: iosDetails,
      );

      final title = (message['aps']?['alert']?['title'] ?? // iOS format
              message['notification']?['title'] ?? // FCM notification payload
              message['title'] ?? // Direct data payload
              'New Notification')
          .toString();

      final body = (message['aps']?['alert']?['body'] ?? // iOS format
              message['notification']?['body'] ?? // FCM notification payload
              message['body'] ?? // Direct data payload
              '')
          .toString();

      await _flutterLocalNotificationsPlugin.show(
        DateTime.now().millisecond,
        title,
        body,
        notificationDetails,
      );
    } catch (e) {
      debugPrint('Error showing local notification: $e');
    }
  }

  void _onLocalNotificationTapped(NotificationResponse details) {
    debugPrint('Local notification tapped: ${details.payload}');
    // Handle notification tap here
  }
}

/// Main notification service that orchestrates all handlers
final class NotificationService {
  NotificationService._() {
    // Set up message callbacks
    FirebaseMessagingHandler.instance.onMessageCallback = _onMessageReceived;
  }
  static NotificationService? _instance;
  static NotificationService get instance => _instance ??= NotificationService._();

  final _firebaseHandler = FirebaseMessagingHandler.instance;
  final _localHandler = LocalNotificationHandler.instance;

  Future<void> initialize() async {
    await Future.wait([
      _firebaseHandler.initialize(),
      _localHandler.initialize(),
    ]);
  }

  void _onMessageReceived(Map<String, dynamic> message) {
    debugPrint('Received message: $message');
    _localHandler.showNotification(message);
  }

  Future<void> unregisterDevice() async {
    await Future.wait([
      _firebaseHandler.unregisterDevice(),
    ]);
  }
}

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  log('Handling a Firebase background message: ${message.messageId}');
  // Add your Firebase background message handling logic here
}

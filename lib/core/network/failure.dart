/// Failure class to handle error messages and codes
final class Failure {
  /// Constructor for Failure.
  Failure({required this.message, required this.code});

  /// Message of the failure.
  final String message;

  /// Code of the failure.
  final String code;
}

/// Network failure class.
final class NetworkFailure extends Failure {
  /// Constructor for NetworkFailure.
  NetworkFailure({
    required super.message,
    required super.code,
  });
}

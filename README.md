# Movie Search App

A modern Flutter application that allows users to search for movies using The Movie Database (TMDb) API. Built with Clean Architecture principles and following best practices in Flutter development.

## 🏗 Architecture

The project follows Clean Architecture principles with a BLoC pattern for state management. The codebase is organized into feature-based modules with clear separation of concerns:

### Layers

```
lib/
├── core/                  # Core functionality and shared components
│   ├── constants/        # App-wide constants
│   ├── network/         # Network related implementations
│   ├── theme/          # Theme configuration
│   ├── di/            # Dependency injection setup
│   ├── cache/        # Local storage implementations
│   └── utils/       # Utility functions and helpers
├── features/        # Feature modules
│   └── movie_search/  # Movie search feature
│       ├── data/      # Data layer (repositories, models)
│       ├── domain/    # Domain layer (entities, use cases)
│       └── presentation/  # UI layer (widgets, cubits)
├── localization/    # Internationalization
└── app/            # App-level configurations
```

## 📦 Key Packages

### State Management

- `flutter_bloc`: ^9.0.0 - For robust state management using the BLoC pattern
- `equatable`: ^2.0.7 - For value equality comparisons

### Navigation

- `auto_route`: ^9.2.2 - Type-safe routing solution
- `auto_route_generator`: ^9.0.0 - Code generation for routes

### Networking

- `dio`: ^5.7.0 - HTTP client for API calls
- `retrofit`: ^4.4.2 - Type-safe HTTP client
- `pretty_dio_logger`: ^1.4.0 - Network logging

### Local Storage

- `hive`: ^4.0.0-dev.2 - Lightweight and fast key-value database
- `path_provider`: ^2.1.5 - Path provider for local storage

### UI Components

- `flutter_screenutil`: ^5.9.3 - Responsive UI
- `cached_network_image`: ^3.4.1 - Image caching
- `flex_color_scheme`: ^8.1.0 - Theming solution
- `shimmer`: ^3.0.0 - Loading animations

### Analytics & Monitoring

- `firebase_analytics`: ^11.4.0 - Usage analytics
- `firebase_crashlytics`: ^4.3.0 - Crash reporting
- `sentry_flutter`: ^8.12.0 - Error tracking

### Development Tools

- `very_good_analysis`: ^7.0.0 - Strict lint rules
- `build_runner`: ^2.4.14 - Code generation
- `dart_mappable`: ^4.3.0 - JSON serialization

## 🌍 Environment Configuration

The app supports multiple environments:

- Development (dev)
- Staging (stg)
- Production (prod)

Each environment has its own configuration and can be run using different entry points:

- `main_dev.dart`
- `main_stg.dart`
- `main.dart` (production)

## 🚀 Features

- Real-time movie search
- Responsive grid layout
- Image caching
- Localization support
- Dark/Light theme support
- Error handling
- Analytics tracking
- Crash reporting

## 🔧 Setup & Installation

1. Clone the repository
2. Install dependencies:

```bash
flutter pub get
```

3. Run code generation:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

4. Run the app:

```bash
# Development
flutter run --flavor dev -t lib/main_dev.dart

# Staging
flutter run --flavor stg -t lib/main_stg.dart

# Production
flutter run --flavor prod -t lib/main.dart
```

## 📱 Building for Release

### Android

```bash
flutter build apk --flavor prod -t lib/main.dart
```

### iOS

```bash
flutter build ios --flavor prod -t lib/main.dart
```

## 🧪 Testing

The project includes:

- Unit tests for business logic
- Widget tests for UI components
- Integration tests for API calls

Run tests using:

```bash
flutter test
```

## 📝 Code Style

The project follows strict lint rules enforced by `very_good_analysis`. Ensure your code follows these guidelines by running:

```bash
flutter analyze
```

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

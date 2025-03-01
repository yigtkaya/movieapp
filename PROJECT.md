# Movie Search App

## Overview

A Flutter application that allows users to search for movies using The Movie Database (TMDb) API. The app features a clean, modern interface with a search bar and grid display of movie results.

## Features

- Real-time movie search functionality
- Grid view display of movie results
- Movie poster and title display
- Input validation for search queries
- Multiple environment support (Development, Staging, Production)
- Flavor-based build configuration

## Technical Specifications

### API Integration

- TMDb API for movie data
- Base URL: `https://api.themoviedb.org/3`
- Endpoints:
  - Search: `/search/movie`
  - Image Base URL: `https://image.tmdb.org/t/p/w220_and_h330_face`

### Architecture

- Clean Architecture with BLoC pattern
- Feature-based project structure
- Environment-specific configurations

### Dependencies

- flutter_bloc: State management
- dio: API calls
- cached_network_image: Image caching
- auto_route: Navigation
- get_it: Dependency injection
- freezed: Data class generation
- very_good_analysis: Strict linting rules

### Project Structure

```
lib/
├── core/
│   ├── constants/
│   ├── network/
│   └── utils/
├── features/
│   └── movie_search/
│       ├── data/
│       ├── domain/
│       └── presentation/
├── initializer.dart
├── main.dart
├── main_dev.dart
├── main_prod.dart
└── main_stg.dart
```

### Environment Configuration

#### iOS

- Debug and Release configurations for dev, staging, and production
- Separate xcconfig files for each environment

#### Android

- Flavor-based build variants
- Environment-specific configurations in build.gradle

### UI Components

- SearchBar with validation (minimum 2 characters)
- GridView for movie results
- Movie card widget displaying:
  - Movie poster
  - Original title

### Error Handling

- Network error handling
- Input validation
- Loading states
- Empty states

## Development Guidelines

- Follow Flutter style guide
- Implement proper error handling
- Use const constructors when possible
- Keep UI files under 150 lines
- Implement proper state management
- Use proper naming conventions
- Follow very_good_analysis linting rules

## Testing

- Unit tests for business logic
- Widget tests for UI components
- Integration tests for API calls

## Performance Considerations

- Image caching
- Pagination for search results
- Debouncing search queries
- Environment-specific optimizations

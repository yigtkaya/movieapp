#!/bin/bash
# Script to generate Firebase configuration files for different environments/flavors
# Feel free to reuse and adapt this script for your own projects

if [[ $# -eq 0 ]]; then
  echo "Error: No environment specified. Use 'dev', 'stg', or 'prod'."
  exit 1
fi

case $1 in
  dev)
    flutterfire config \
      --project=fenximovie \
      --out=lib/firebase_options_dev.dart \
      --ios-bundle-id=com.fenix.movieapptest.dev \
      --ios-out=ios/config/dev/GoogleService-Info.plist \
      --android-package-name=com.fenix.movieapptest.dev \
      --android-out=android/app/src/dev/google-services.json
    ;;
  stg)
    flutterfire config \
      --project=fenixmovie \
      --out=lib/firebase_options_stg.dart \
      --ios-bundle-id=com.borusan.kerimcelik.stg \
      --ios-out=ios/config/stg/GoogleService-Info.plist \
      --android-package-name=com.borusan.kerimcelik.stg \
      --android-out=android/app/src/stg/google-services.json
    ;;
  prod)
    flutterfire config \
      --project=fenximovie \
      --out=lib/firebase_options_prod.dart \
      --ios-bundle-id=com.fenix.movieapptest \
      --ios-out=ios/config/prod/GoogleService-Info.plist \
      --android-package-name=com.fenix.movieapptest \
      --android-out=android/app/src/prod/google-services.json
    ;;
  *)
    echo "Error: Invalid environment specified. Use 'dev', 'stg', or 'prod'."
    exit 1
    ;;
esac
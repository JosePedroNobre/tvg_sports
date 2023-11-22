## Project Architecture Overview

1. **Network Layer**
   - Implements a generic API service with CRUD methods.
   - Includes interceptors for logging and support for JWT tokens and model serialization.

2. **Repository Layer**
   - Accepts a Data Source that can be either Local or Remote.
   - Designed to enhance ease of testing.

3. **Presentation Layer**
   - Composed of screens and cubits.

4. **Route Generator**
   - Manages navigation within the app.

5. **Custom Extensions**
   - Provides custom extensions for classes and styles.

## Getting Started

   1) `flutter clean`
   2) `flutter pub get`

## How to run

**Run app** 
`flutter run lib/main.dart`  

**Build app android** 
`flutter build apk lib/main.dart`  

**Build app ios** 
`flutter build ios lib/main.dart`  

## Example

https://github.com/JosePedroNobre/tvg_sports/assets/41454761/390e2247-6220-4098-af03-279402acdadc


# Yo! In Flutter.

![yo_flutter](https://user-images.githubusercontent.com/11478053/49794374-b1a1ce00-fd37-11e8-9364-9ec0efde9ca6.png)

Basically Yo! written in Flutter. Done in a three hour workshop with people who never used Flutter before 🍻

## How to build the app

> Are you in a hurry and just want to check out the end-result on your phone? In the [releases tab](https://github.com/flschweiger/yo-flutter/releases/tag/1.0) you will find a precompiled APK to download 🚀

If you would like to compile the code and run the app on your machine, you will have to create a new Firebase project and make sure to add the following files:

1. Create a new firebase project https://console.firebase.google.com
2. Register the ios and android application 
   
On Android, register the SHA-1 of your local certificate to Firebase to make Google Sign-In work.
> `keytool -exportcert -list -v \
-alias androiddebugkey -keystore ~/.android/debug.keystore`

and download the firebase configuration files to
- `ios/Runner/GoogleService-Info.plist`
- `android/app/google-services.json`  

3. Setup Firebase Authentication: Go to `Develop -> Authentication` and set up sign-in method  

On iOS you need to edit `ios/Runner/Info.plist` and paste in your `REVERSED_CLIENT_ID`.

Last but not least you will have to deploy the Cloud Function inside the `firebase` folder and replace the URL inside the `home_page.dart` file. And voilà, you are all set!

## Disclaimer

Please note that this code is not production ready, it should just show how quick you could build a million dollar app for Android and iOS 😉

# GoogleMaps-Simple-App-iOS
Simple app for showing Google Maps SDK for iOS 


# Requirements

* Latest version of XCode - download from https://developer.apple.com/xcode/

* The Google Maps SDK for iOS - download from https://developers.google.com/maps/documentation/ios/start

## Don't forget to define your API key
* Select a bundle identifier. The default in the project is com.example.GoogleMapsTestmunk. To change the bundle identifier, select the project in the Project Navigator and click on GoogleMaps Testmunk in the Targets list. Go to the General tab, and change Bundle Identifier.
* Generate a key or use this one: AIzaSyBzSA2h7OcGAbxdM3ZSO2OZJy2l8h4k81A
* Edit the AppDelegate.m file. In the line:

        [GMSServices provideAPIKey:@"YOUR_API_KEY"];

  replace YOUR\_API\_KEY with your key.

## Add the SDK
* Follow [this guide](https://developers.google.com/maps/documentation/ios/start#adding_the_google_maps_sdk_for_ios_to_your_project.)

## Choose a device and Compile a new Build
* Choose a real device or Simulator
* Click on the Run button (or Shift + Command + R)

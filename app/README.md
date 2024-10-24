# connect_service_app

A new Flutter project.

## Flutter Befehle
-> Regenerate generated classes (*.g,*.freezed,*.mock)
(fvm) dart run build_runner build --delete-conflicting-outputs

-> Installation of packages used
(fvm) flutter pub get

## Android Automotive

Nötige Einträge im AndroidManifest:
<meta-data android:name="distractionOptimized" android:value="true"/>
<uses-permission android:name="android.car.permission.CAR_UX_RESTRICTIONS_CONFIGURATION" />
<uses-permission android:name="android.car.permission.CAR_DRIVING_STATE"/>

=> both permissions use android:protectionLevel="signature|privileged".
   This means they cannot be used in our current debug build
(https://developer.android.com/guide/topics/manifest/permission-element)

The listeners necessary to react to changes in the UxRestrictions are initialized and registered in MainActivity.kt.
When events arrive, they are sent to the Flutter layer via so-called MethodChannels (https://docs.flutter.dev/platform-integration/platform-channels).
The UI could now be adapted to the events.
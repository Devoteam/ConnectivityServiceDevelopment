# connect_service_app

A new Flutter project.

## Flutter Befehle
-> Neu generieren von Klassen (*.g,*.freezed,*.mock)
(fvm) dart run build_runner build --delete-conflicting-outputs

-> Installation verwendeter Packages
(fvm) flutter pub get

## Android Automotive

Nötige Einträge im AndroidManifest:
<meta-data android:name="distractionOptimized" android:value="true"/>
<uses-permission android:name="android.car.permission.CAR_UX_RESTRICTIONS_CONFIGURATION" />
<uses-permission android:name="android.car.permission.CAR_DRIVING_STATE"/>

=> beide Permissions verwenden android:protectionLevel="signature|privileged" und
   können damit nicht in unserem aktuellen Debug Build verwendet werden
(https://developer.android.com/guide/topics/manifest/permission-element)

Die nötigen Listener um auf Veränderungen der UxRestrictions zu reagieren, werden in der MainActivity.kt initialisiert und registriert.
Bei eintreffenden Events werden diese über sg. MethodChannel (https://docs.flutter.dev/platform-integration/platform-channels) an die Flutter Schicht geschickt.
Hier könnte nun passend zu den Events die UI angepasst werden.
# cordova-plugin-check-installed-apps
This is a cordova plugin for **iOS** to detect whether an Application is already installed on the device or not. This is very useful plugin for url redirections and deep linking scenarios.

You can use following line to call the plugin
```
CheckInstalledApps.checkInstalledApps(successCallback, errorCallback, appName); // appName is String
```

You can access the callbacks like following code.
```
function successCallback(isAvailableApp) {
    console.log("Is this application is already installed in the device: ", isAvailableApp);
}

function errorCallback(error) {
    console.log("Something went wrong: ", error);
}
```

# cordova-plugin-check-installed-apps
This is a cordova plugin for **iOS** to detect whether an Application is already installed on the device or not. This is very useful plugin for url redirections and deep linking scenarios.

You can use following line to call the plugin
```
CheckInstalledApps.checkInstalledApps(successCallback, errorCallback, appName);
// appName is the name string of the application(if the app scheme is 'twitter://' just enough to pass 'twitter' to the app name)
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
The plugin will return true if the app is available in the device otherwise it will return false.

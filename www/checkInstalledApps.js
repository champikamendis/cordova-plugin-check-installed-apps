const exec = require("cordova/exec");
const SERVICE = "CheckInstalledApps";

const CheckInstalledApps = {
  checkInstalledApps: function(cb, err, appName) {
    exec(cb, err, SERVICE, "checkInstalledApps", [appName]);
  },
};

if (typeof module != "undefined" && module.exports) {
  module.exports = CheckInstalledApps;
}

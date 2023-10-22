const exec = require("cordova/exec");
const SERVICE = "CheckInstalledApps";

const CheckInstalledApps = {
  checkInstalledApps: function(cb, err) {
    exec(cb, err, SERVICE, "checkInstalledApps", []);
  },
};

if (typeof module != "undefined" && module.exports) {
  module.exports = CheckInstalledApps;
}

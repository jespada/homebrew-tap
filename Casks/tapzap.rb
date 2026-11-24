cask "tapzap" do
  version :latest
  sha256 :no_check

  url "https://tapzap.app/downloads/TapZap-mac.dmg"
  name "TapZap"
  desc "Menu bar app for screen warmth and PWM-safe dimming"
  homepage "https://tapzap.app/"

  depends_on macos: :monterey

  app "Tap ZAP.app"

  uninstall launchctl: "com.antigravity.tapzap2.early-login",
            quit:      "com.antigravity.tapzap2"

  zap trash: [
    "~/Library/Application Support/TapZap",
    "~/Library/Caches/com.antigravity.tapzap2",
    "~/Library/HTTPStorages/com.antigravity.tapzap2",
    "~/Library/HTTPStorages/com.antigravity.tapzap2.binarycookies",
    "~/Library/LaunchAgents/com.antigravity.tapzap2.early-login.plist",
    "~/Library/Preferences/com.antigravity.tapzap2.plist",
  ]
end

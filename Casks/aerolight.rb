cask "aerolight" do
  version "1.0.0"
  sha256 :no_check

  url "https://github.com/julius-hell/aerolight-app/releases/download/v#{version}/aerolight-app-#{version}.zip"
  name "Aerolight"
  desc "Window switcher for AeroSpace window manager on macOS"
  homepage "https://github.com/julius-hell/aerolight-app"

  app "aerolight-app.app"

  binary "#{appdir}/aerolight-app.app/Contents/MacOS/aerolight-app", target: "aerolight"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/aerolight-app.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.aerolight-app.plist",
    "~/Library/Saved Application State/com.aerolight-app.savedState",
  ]
end

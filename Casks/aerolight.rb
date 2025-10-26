cask "aerolight" do
  version "1.1.1"
  sha256 "415f9088750a34d52cfb15902d43eff9cdf291adf4cd50bd0bb8844407bf8238"

  url "https://github.com/julius-hell/aerolight/releases/download/v#{version}/Aerolight.app.zip"
  name "Aerolight"
  desc "Window switcher for macOS"
  homepage "https://github.com/julius-hell/aerolight"

  app "Aerolight.app"
  binary "#{appdir}/Aerolight.app/Contents/MacOS/Aerolight", target: "aerolight"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Aerolight.app"]
  end
end

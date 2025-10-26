cask "aerolight" do
  version "1.1.0"
  sha256 "ad655c56c47195f586b6d87bc2ae986b03488133e92fd8e4e8a0257afc844a28"

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

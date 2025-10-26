cask "aerolight" do
  version "1.0.4"
  sha256 "2d1a502482713b5a55eb73766135e0cd165b9a78abad59e4a383a6acf6d885bb"

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

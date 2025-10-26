cask "aerolight" do
  version "1.0.2"
  sha256 "bb94d36280c7dea3437314db1765ab58cd2bad911b593e8afc7551a834b2ab01"

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

cask "aerolight" do
  version "1.0.5"
  sha256 "e7a455c561cf493d58fed6f0e74ceccfa31c668b9db422b75cb34044c02c711c"

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

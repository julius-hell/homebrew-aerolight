cask "aerolight" do
  version "1.0.0"
  sha256 "385b40c77209dfd08254f33a2639b2af935d82df5e8bb688520996639360a13c" # SHA256 deines .app.zip

  url "https://github.com/julius-hell/aerolight/releases/download/v#{version}/Aerolight.app.zip"
  name "Aerolight"
  desc "Spotlight for aerospace"
  homepage "https://github.com/julius-hell/aerolight"

  app "Aerolight.app"
end


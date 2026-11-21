cask "silica" do
  version "0.8.0"
  sha256 "9eace6d025f5d8e8f00a369261f1830e123d37dafbc8f7e3e035f2c38afee6ee"

  url "https://github.com/dqhieu/Silica/releases/download/v#{version}/Silica-#{version}.dmg"
  name "Silica"
  desc "Lightweight code editor"
  homepage "https://github.com/dqhieu/Silica"

  livecheck do
    url "https://dqhieu.github.io/Silica/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Silica.app"
  binary "#{appdir}/Silica.app/Contents/Resources/silica"

  zap trash: [
    "~/Library/Caches/com.hieudinh.Silica",
    "~/Library/HTTPStorages/com.hieudinh.Silica",
    "~/Library/Preferences/com.hieudinh.Silica.plist",
    "~/Library/WebKit/com.hieudinh.Silica",
  ]
end

cask "silica" do
  version "0.9.1"
  sha256 "0263238675ddcd43b689a40e4a34002cb036fd7a7d54347d35f08c8e8686f136"

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

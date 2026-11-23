cask "silica" do
  version "0.9.0"
  sha256 "450e9cfac0108366e7adbca47a04bb473c099ccbaee5a8d99109593331f99b44"

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

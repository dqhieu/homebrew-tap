cask "silica" do
  version "0.6.0"
  sha256 "0a8d00e827b882861c69b401a99e6b41e43280f24199836ebcb7f3153e3a1614"

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

  zap trash: [
    "~/Library/Caches/com.hieudinh.Silica",
    "~/Library/HTTPStorages/com.hieudinh.Silica",
    "~/Library/Preferences/com.hieudinh.Silica.plist",
    "~/Library/WebKit/com.hieudinh.Silica",
  ]
end

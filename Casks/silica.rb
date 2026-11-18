cask "silica" do
  version "0.7.0"
  sha256 "85b59a28a79f67c5aa7589be3c6d897b0c223a07069360138a2a03819682d76c"

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

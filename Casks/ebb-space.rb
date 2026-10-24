# Updated by ebb-space's release.sh on every release.
cask "ebb-space" do
  version "0.3.4"
  sha256 "558b491361e0182daabf5ce8d0f697083430887685dc3fe099f4ed8db0891579"

  url "https://ebbspace.com/download/EbbSpace-#{version}.dmg"
  name "Ebb Space"
  desc "Storage manager that shows what fills the disk and frees space safely"
  homepage "https://www.ebbspace.com/"

  livecheck do
    url "https://ebbspace.com/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Ebb Space.app"
  binary "#{appdir}/Ebb Space.app/Contents/Helpers/ebb"

  zap trash: [
    "~/.config/ebb",
    "~/.local/state/ebb",
    "~/Library/Caches/tech.benmore.ebb",
    "~/Library/HTTPStorages/tech.benmore.ebb",
    "~/Library/Preferences/tech.benmore.ebb.plist",
    "~/Library/WebKit/tech.benmore.ebb",
  ]
end

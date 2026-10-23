# Updated by ebb-space's release.sh on every release.
cask "ebb-space" do
  version "0.3.3"
  sha256 "941ba9871d211304762594fe18a6ec111ced5aab29d7b2cfc5f2c0cf356b42ef"

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

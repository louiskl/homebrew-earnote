cask "earnote" do
  version "0.9.14"
  sha256 "c3aee4e4c25d7e4e228f3d84b2a1b3be0cf088e9a0f4ae49f2e39e2f1744eab0"

  url "https://github.com/louiskl/Earnote/releases/download/v#{version}/Earnote.dmg"
  name "Earnote"
  desc "Records lectures, meetings and calls and writes notes on your Mac"
  homepage "https://earnote.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia
  depends_on arch: :arm64

  app "Earnote.app"

  zap trash: [
    "~/Library/Application Support/Earnote",
    "~/Library/Caches/app.earnote.Earnote",
    "~/Library/HTTPStorages/app.earnote.Earnote",
    "~/Library/Preferences/app.earnote.Earnote.plist",
    "~/Library/Saved Application State/app.earnote.Earnote.savedState",
  ]
end

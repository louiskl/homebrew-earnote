cask "earnote" do
  version "1.2"
  sha256 "fa712c17ab64857ba4033db4ab69e06f31965e9cbdb5a8b4c9b9c5bb293e4cfa"

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

cask "earnote" do
  version "1.0.2"
  sha256 "0f1980243523f32815199fda78db2442fe57752c1bc18f448557177d6b1729d4"

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

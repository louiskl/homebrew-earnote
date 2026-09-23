cask "earnote" do
  version "0.9.17"
  sha256 "a72d3b544251fe6b61e9242f849ff620a86bb159448d0f77989e4fbc8e7d80ce"

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

cask "earnote" do
  version "0.9.20"
  sha256 "2ed7b923754c1ed07a19f926e399a1c80f662e8d97730ecc5b0b4b8365b9e4e6"

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

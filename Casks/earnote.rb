cask "earnote" do
  version "0.9.3"
  sha256 "4ac671d8c3262d09dfc4734be522dc229440248a7a492617384963f1cb67c393"

  url "https://github.com/louiskl/Earnote/releases/download/v#{version}/Earnote.dmg",
      verified: "github.com/louiskl/Earnote/"
  name "Earnote"
  desc "Records lectures, meetings and calls and writes notes on your Mac"
  homepage "https://louiskl.github.io/Earnote/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"
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

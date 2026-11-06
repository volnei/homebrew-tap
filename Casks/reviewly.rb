cask "reviewly" do
  version "1.1.3"
  sha256 "97aebc7c03066a45926cd6e7dfcc328d9b38bf1eb13bbfb0d3b06251f97053ce"

  url "https://github.com/volnei/reviewly/releases/download/v#{version}/Reviewly-#{version}-macos.dmg"
  name "Reviewly"
  desc "Local-first desktop app for reviewing GitHub pull requests"
  homepage "https://github.com/volnei/reviewly"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "Reviewly.app"

  zap trash: [
    "~/Library/Application Support/dev.volnei.reviewly",
    "~/Library/Caches/dev.volnei.reviewly",
    "~/Library/Preferences/dev.volnei.reviewly.plist",
    "~/Library/Saved Application State/dev.volnei.reviewly.savedState",
    "~/Library/WebKit/dev.volnei.reviewly",
  ]
end

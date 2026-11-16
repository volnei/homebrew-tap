cask "reviewly" do
  version "1.1.8"
  sha256 "b4324a2da9215ea7e8d725b10b85b62c5a007cb35edd97ae045a92611d85912f"

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

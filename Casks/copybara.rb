cask "copybara" do
  version "1.0.1"
  sha256 "821d604f58afe5c48be1b0cedce776ff2c343962042b1ed6d5d34257e9e2e9c0"

  url "https://github.com/hkyselov/copybara/releases/download/v#{version}/Copybara-#{version}-universal.dmg",
      verified: "github.com/hkyselov/copybara/"
  name "Copybara"
  desc "Lightweight clipboard manager for the menu bar"
  homepage "https://hkyselov.github.io/copybara/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates false
  depends_on macos: :ventura

  app "Copybara.app"

  zap trash: [
    "~/Library/Application Support/Copybara",
    "~/Library/Preferences/com.copybara.plist",
    "~/Library/Saved Application State/com.copybara.savedState",
  ]

  caveats <<~EOS
    Copybara is not notarized (open-source project without an Apple Developer
    account), so macOS will block the first launch. Approve it via
    System Settings → Privacy & Security → "Open Anyway", or clear the
    quarantine flag:

      xattr -cr /Applications/Copybara.app

    Paste-on-select requires the Accessibility permission (System Settings →
    Privacy & Security → Accessibility).
  EOS
end

cask "miq" do
  version "1.5.0"
  sha256 "c4595d095b2c0369c65bf8359eb61b1378141ab161d59a9bd8d6a600a2aa5ffa"

  url "https://github.com/marcoduering/MIQ/releases/download/v#{version}/MIQ.app.zip"
  name "MIQ"
  desc "Quick Look extension for medical image files in popular research formats"
  homepage "https://github.com/marcoduering/MIQ"

  livecheck do
    url :url
    strategy :github_latest
  end

  # MIQ updates itself via Sparkle from 1.4.0 on. Tells `brew upgrade` to leave
  # it alone unless --greedy is passed, so the tap never downgrades a
  # self-updated app.
  auto_updates true

  depends_on macos: :sonoma

  app "MIQ.app"
end

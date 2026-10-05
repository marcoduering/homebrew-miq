cask "miq" do
  version "1.5.3"
  sha256 "7f18cb36c032fd3afcbb06986de99c8df074cda7925dc20ca48f151d5ce4c3d9"

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

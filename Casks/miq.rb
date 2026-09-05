cask "miq" do
  version "1.4.1"
  sha256 "61574d5f648efcf3d503a20d1ef21097947d9fd3e0c42d272386e7e0c2aa3d14"

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

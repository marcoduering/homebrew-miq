cask "miq" do
  version "1.6.3"
  sha256 "106117012c80ecef4f96eb9c8fa775972bc0bf24e1378ac8e87c9fe9a94b60c4"

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

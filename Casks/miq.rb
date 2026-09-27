cask "miq" do
  version "1.5.2"
  sha256 "1c525c9a6f84174a67e15503ac1aa894a6ec49aaa61a3e31c3f00fec8b1c8e4a"

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

cask "miq" do
  version "1.7.1"
  sha256 "10dbd11f5b60d521c2228a3df644bf0cdbf696e08bc33f994a0c6d5b8690a71d"

  url "https://github.com/marcoduering/MIQ/releases/download/v#{version}/MIQ.app.zip"
  name "MIQ"
  name "Medical Image QuickLook"
  desc "Quick Look extension for medical image files in popular research formats"
  homepage "https://miq.marco-duering.net/"

  livecheck do
    url "https://miq.marco-duering.net/appcast.xml"
    strategy :sparkle
  end

  # MIQ updates itself via Sparkle from 1.4.0 on. Tells `brew upgrade` to leave
  # it alone unless --greedy is passed, so the tap never downgrades a
  # self-updated app.
  auto_updates true
  depends_on macos: :sonoma

  app "MIQ.app"

  zap trash: [
    "~/Library/Application Scripts/group.net.marco-duering.miq",
    "~/Library/Application Scripts/net.marco-duering.miq",
    "~/Library/Application Scripts/net.marco-duering.miq.extension",
    "~/Library/Application Scripts/net.marco-duering.miq.thumbnail",
    "~/Library/Caches/net.marco-duering.miq",
    "~/Library/Containers/net.marco-duering.miq",
    "~/Library/Containers/net.marco-duering.miq.extension",
    "~/Library/Containers/net.marco-duering.miq.thumbnail",
    "~/Library/Group Containers/group.net.marco-duering.miq",
  ]
end

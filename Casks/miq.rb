cask "miq" do
  version "1.7.0"
  sha256 "f0168dc3eda9fe48b766ba43489866ae6a323227ec42506c03161bfe6fe948c7"

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

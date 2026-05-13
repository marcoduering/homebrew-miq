cask "miq" do
  version "0.3.0"
  sha256 "7761c76d3b6237a713cc7e70489fbf3c4ef2364156a504877aa87738ec09df43"

  url "https://github.com/marcoduering/MIQ/releases/download/v#{version}/MIQ.app.zip"
  name "MIQ"
  desc "A Quick Look extension for medical image files in popular research formats"
  homepage "https://github.com/marcoduering/MIQ"
  app "MIQ.app"
end
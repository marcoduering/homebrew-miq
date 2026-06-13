cask "miq" do
  version "1.1.0"
  sha256 "d56902664ee8ea7825d54e3541d9baa94c34105a85ee89236dd363a5bcf53b91"

  url "https://github.com/marcoduering/MIQ/releases/download/v#{version}/MIQ.app.zip"
  name "MIQ"
  desc "A Quick Look extension for medical image files in popular research formats"
  homepage "https://github.com/marcoduering/MIQ"
  app "MIQ.app"
end
cask "miq" do
  version "0.2.0"
  sha256 "95a1cfc233b0939a586ed9bb33e7fa7e4569b21d8461b3c71bab832a32b1801d"

  url "https://github.com/marcoduering/MIQ/releases/download/v#{version}/MIQ.app.zip"
  name "MIQ"
  desc "A Quick Look extension for medical image files in popular research formats"
  homepage "https://github.com/marcoduering/MIQ"
  app "MIQ.app"
end
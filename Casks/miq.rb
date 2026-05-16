cask "miq" do
  version "0.4.2"
  sha256 "fd0e6a220bbd8fcf2298bf5f122b9a6089feb4dd4c88f8d24bab8116c7c3b753"

  url "https://github.com/marcoduering/MIQ/releases/download/v#{version}/MIQ.app.zip"
  name "MIQ"
  desc "A Quick Look extension for medical image files in popular research formats"
  homepage "https://github.com/marcoduering/MIQ"
  app "MIQ.app"
end
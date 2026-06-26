cask "miq" do
  version "1.2.0"
  sha256 "c035fa8deb4e0a074ae1f934967ba33727b1165499ad78f2b02306b6f12bcfd4"

  url "https://github.com/marcoduering/MIQ/releases/download/v#{version}/MIQ.app.zip"
  name "MIQ"
  desc "A Quick Look extension for medical image files in popular research formats"
  homepage "https://github.com/marcoduering/MIQ"
  app "MIQ.app"
end
cask "miq" do
  version "1.0.0"
  sha256 "6d842b655ac4b40fbc2ade23346a5373f11729c536493af4d0c5e31057e08f04"

  url "https://github.com/marcoduering/MIQ/releases/download/v#{version}/MIQ.app.zip"
  name "MIQ"
  desc "A Quick Look extension for medical image files in popular research formats"
  homepage "https://github.com/marcoduering/MIQ"
  app "MIQ.app"
end
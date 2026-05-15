cask "miq" do
  version "0.4.1"
  sha256 "8189f35e13bc9628777904219032b5659374877d958910f21fed6b5b51694da8"

  url "https://github.com/marcoduering/MIQ/releases/download/v#{version}/MIQ.app.zip"
  name "MIQ"
  desc "A Quick Look extension for medical image files in popular research formats"
  homepage "https://github.com/marcoduering/MIQ"
  app "MIQ.app"
end
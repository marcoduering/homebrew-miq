cask "miq" do
  version "0.5.0"
  sha256 "80f7793c7d44d0f4076eff4c44f7577bd701515e455b6a23f0bf0a840db4667b"

  url "https://github.com/marcoduering/MIQ/releases/download/v#{version}/MIQ.app.zip"
  name "MIQ"
  desc "A Quick Look extension for medical image files in popular research formats"
  homepage "https://github.com/marcoduering/MIQ"
  app "MIQ.app"
end
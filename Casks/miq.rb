cask "miq" do
  version "0.4.0"
  sha256 "fe2193eb59c47aba666bc2a5ee33c6fbef7c9b40247fa654ca933b30222710b0"

  url "https://github.com/marcoduering/MIQ/releases/download/v#{version}/MIQ.app.zip"
  name "MIQ"
  desc "A Quick Look extension for medical image files in popular research formats"
  homepage "https://github.com/marcoduering/MIQ"
  app "MIQ.app"
end
cask "miq" do
  version "1.3.0"
  sha256 "c8dfd1800c9e3353b32c376d081b3cc8eb6c93924288f63aa56d9380e877b558"

  url "https://github.com/marcoduering/MIQ/releases/download/v#{version}/MIQ.app.zip"
  name "MIQ"
  desc "A Quick Look extension for medical image files in popular research formats"
  homepage "https://github.com/marcoduering/MIQ"
  app "MIQ.app"
end
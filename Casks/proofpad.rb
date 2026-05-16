cask "proofpad" do
  version "0.1.8"
  sha256 "2ad4499baae8405eba4addd8f961757468271cf344998cfc26f9d5c5a9f972ea"

  url "https://github.com/gjaku1031/ProofPad/releases/download/v#{version}/ProofPad-#{version}.dmg"
  name "ProofPad"
  desc "PDF note app for marking documents with a Wacom pen"
  homepage "https://github.com/gjaku1031/ProofPad"

  auto_updates true
  depends_on macos: :ventura

  app "ProofPad.app"

  zap trash: [
    "~/Library/Application Support/ProofPad",
    "~/Library/Preferences/com.ken.proofpad.plist",
  ]
end

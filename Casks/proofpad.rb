cask "proofpad" do
  version "0.1.7"
  sha256 "d36b7965d48e2dbd3a245aad6de90d2cff1a5ffbe296b2a82681cd8ae690561c"

  url "https://github.com/gjaku1031/ProofPad/releases/download/v#{version}/ProofPad-#{version}.dmg"
  name "ProofPad"
  desc "PDF note app for marking documents with a Wacom pen"
  homepage "https://github.com/gjaku1031/ProofPad"

  auto_updates true

  app "ProofPad.app"

  zap trash: [
    "~/Library/Application Support/ProofPad",
    "~/Library/Preferences/com.ken.proofpad.plist",
  ]
end

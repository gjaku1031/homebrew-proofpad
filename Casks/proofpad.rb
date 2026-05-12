cask "proofpad" do
  version "0.1.6"
  sha256 "227fe32da51aa96cae30c8810465a759a1097962b28860c658090d00981228d6"

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

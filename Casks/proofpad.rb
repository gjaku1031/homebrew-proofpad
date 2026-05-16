cask "proofpad" do
  version "0.1.9"
  sha256 "43455836c1261871e927bbe976f46a5b9301db88c45ff9461dac7e87431ca03c"

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

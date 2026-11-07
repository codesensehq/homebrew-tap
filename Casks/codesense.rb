cask "codesense" do
  version "0.1.0"
  sha256 "c9c3823840dd005746c16e49b5eed7697a558ce2f59dc9e5d73d0f8f022104a9"

  url "https://dl.codesense.ai/v1/#{version}/CodeSense_#{version}_aarch64.dmg"
  name "CodeSense"
  desc "Runs Claude Code, Codex and OpenCode agents across every repo in your own git"
  homepage "https://codesense.ai/"

  livecheck do
    url "https://dl.codesense.ai/v1/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "CodeSense.app"

  zap trash: [
    "~/Library/Application Support/ai.codesense",
    "~/Library/Caches/ai.codesense",
    "~/Library/Logs/ai.codesense",
    "~/Library/Preferences/ai.codesense.plist",
    "~/Library/WebKit/ai.codesense",
  ]

  caveats <<~EOS
    CodeSense's data in ~/.codesense (including local copies of your context repositories and
    their worktrees, which may hold unpushed changes) is left in place, even by --zap.
    Remove it by hand if you no longer need it.
  EOS
end

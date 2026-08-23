cask "pythonmiao" do
  version "1.6-1"
  sha256 "4aea464554413f577dc52461e080a07a85ea8fb8831a31cde3403f9a48a177e5"

  url "https://github.com/allwefantasy/homebrew-tap/releases/download/pythonmiao-v#{version}/PythonMiao-#{version}-arm64.dmg",
      verified: "github.com/allwefantasy/homebrew-tap/"
  name "PythonMiao"
  desc "Native macOS Auto-Coder desktop client"
  homepage "https://gitcode.com/allwefantasy11/winclaw"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "PythonMiao.app"

  zap trash: [
    "~/Library/Application Support/com.allwefantasy.AutoCoderDesktop",
    "~/Library/Caches/com.allwefantasy.AutoCoderDesktop",
    "~/Library/HTTPStorages/com.allwefantasy.AutoCoderDesktop",
    "~/Library/Logs/com.allwefantasy.AutoCoderDesktop",
    "~/Library/Preferences/com.allwefantasy.AutoCoderDesktop.plist",
    "~/Library/Saved Application State/com.allwefantasy.AutoCoderDesktop.savedState",
  ]
end

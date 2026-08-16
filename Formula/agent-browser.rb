class AgentBrowser < Formula
  desc "Headless browser automation CLI for AI agents (portable, embeds Node.js)"
  homepage "https://github.com/allwefantasy/agent-browser"
  version "2.0.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/allwefantasy/homebrew-tap/releases/download/agent-browser-v2.0.3/agent-browser-2.0.3-darwin-arm64.zip"
      sha256 "698d7e44de7ea767aa9155508ea512f747f4d537611432ef307f9357c557a2fc"
    end
    on_intel do
      url "https://github.com/allwefantasy/homebrew-tap/releases/download/agent-browser-v2.0.3/agent-browser-2.0.3-darwin-x64.zip"
      sha256 "4ada7400f0b9701a3c55fb7195d35f156149e8a36222638cc460bf94a97b1a7b"
    end
  end

  def install
    # Portable tree: launcher + embedded Node + dist + native CLI
    libexec.install Dir["*"]
    bin.install_symlink libexec/"agent-browser"
  end

  test do
    assert_match "agent-browser", shell_output("#{bin}/agent-browser --help")
  end
end

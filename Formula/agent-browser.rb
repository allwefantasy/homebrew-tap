class AgentBrowser < Formula
  desc "Headless browser automation CLI for AI agents (portable, embeds Node.js)"
  homepage "https://github.com/allwefantasy/agent-browser"
  version "2.0.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/allwefantasy/homebrew-tap/releases/download/agent-browser-v2.0.2/agent-browser-2.0.2-darwin-arm64.zip"
      sha256 "56e4aba4bb31d56e7c9430ffc1105e2d12b7b5a420c0f7b9443553e12a1c05ef"
    end
    on_intel do
      url "https://github.com/allwefantasy/homebrew-tap/releases/download/agent-browser-v2.0.2/agent-browser-2.0.2-darwin-x64.zip"
      sha256 "c7ad3744579e170d74081caaff572eecb43489842835cb7e7b2ebb9e43d44807"
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

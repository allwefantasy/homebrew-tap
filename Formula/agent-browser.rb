class AgentBrowser < Formula
  desc "Headless browser automation CLI for AI agents"
  homepage "https://github.com/allwefantasy/agent-browser"
  version "2.0.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/allwefantasy/homebrew-tap/releases/download/agent-browser-v2.0.2/agent-browser-2.0.2-darwin-arm64.zip"
      sha256 "aef4d3415d4a0d3de232ecdb78ee17e1f600e543f1ee92fb42261bfe427cebb6"
    end
    on_intel do
      url "https://github.com/allwefantasy/homebrew-tap/releases/download/agent-browser-v2.0.2/agent-browser-2.0.2-darwin-x64.zip"
      sha256 "b40e9f6d986c181e51e313000fa1aed98a762ca701cce3bef80913cdd2647fef"
    end
  end

  def install
    bin.install "agent-browser"
  end

  test do
    assert_match "agent-browser", shell_output("#{bin}/agent-browser --help")
  end
end

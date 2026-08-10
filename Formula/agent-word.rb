class AgentWord < Formula
  desc "CLI for AI agents to inspect and edit Word documents"
  homepage "https://github.com/allwefantasy/infinisynapse-tools/tree/main/agent_word"
  version "1.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/allwefantasy/homebrew-tap/releases/download/agent-word-v1.0.5/agent-word-1.0.5-darwin-arm64.zip"
      sha256 "cf7f0e4667ccb01d357c5670120f5af664e6704cf240f424f98fb24e86c9e9ec"
    end
    on_intel do
      url "https://github.com/allwefantasy/homebrew-tap/releases/download/agent-word-v1.0.5/agent-word-1.0.5-darwin-x64.zip"
      sha256 "9d61e5079c573b702a43b01685eabe0becd9c5a7673313d3bfa06a68d655ad66"
    end
  end

  def install
    bin.install "agent_word"
  end

  test do
    assert_match "agent_word version 1.0.5", shell_output("#{bin}/agent_word version")
  end
end

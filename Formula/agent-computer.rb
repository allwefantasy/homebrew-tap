class AgentComputer < Formula
  desc "Computer Use CLI for AI agents with a native macOS helper"
  homepage "https://github.com/allwefantasy/infinisynapse-tools/tree/main/agent_computer"
  version "2.0.1"

  on_macos do
    on_arm do
      url "https://github.com/allwefantasy/homebrew-tap/releases/download/agent-computer-v2.0.1/agent-computer-2.0.1-darwin-arm64.zip"
      sha256 "6f7cb2910ba728f110d881f98bbe33451f207f505dca3e679ddb390dddf09d5b"
    end
    on_intel do
      url "https://github.com/allwefantasy/homebrew-tap/releases/download/agent-computer-v2.0.1/agent-computer-2.0.1-darwin-x64.zip"
      sha256 "1104c126709a470720b68f403386c7c25bbad2ae0682fcfde19be3eecfb7b069"
    end
  end

  def install
    bin.install "agent_computer"
    bin.install "agent_computer_helper"
  end

  test do
    assert_match "agent_computer 2.0.1", shell_output("#{bin}/agent_computer version")
    assert_match "AgentComputerHelper", shell_output("#{bin}/agent_computer_helper --version")
  end
end

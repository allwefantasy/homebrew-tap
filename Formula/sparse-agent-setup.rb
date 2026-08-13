class SparseAgentSetup < Formula
  desc "Bootstrap agent that installs and repairs Python + Auto-Coder"
  homepage "https://github.com/allwefantasy/auto-coder.ultra/tree/master/sparse-agent-setup"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/allwefantasy/homebrew-tap/releases/download/sparse-agent-setup-v0.1.0/sparse-agent-setup-0.1.0-darwin-arm64.zip"
      sha256 "fedf37714cd7d679c98d1e6e973ffc4fc3d26ed175f484691f1cbfb086842c22"
    end
    on_intel do
      url "https://github.com/allwefantasy/homebrew-tap/releases/download/sparse-agent-setup-v0.1.0/sparse-agent-setup-0.1.0-darwin-x64.zip"
      sha256 "8f87ac2f2a3330f611ae2d547a13797216072589734b0cb2b12935e885864146"
    end
  end

  def install
    bin.install "sparse-agent-setup"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/sparse-agent-setup --version")
    assert_match "sparse-agent-setup", shell_output("#{bin}/sparse-agent-setup --help")
  end
end

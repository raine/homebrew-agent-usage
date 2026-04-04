class AgentUsage < Formula
  desc "Display AI agent rate limit usage in your tmux status bar"
  homepage "https://github.com/raine/tmux-agent-usage"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/tmux-agent-usage/releases/download/v0.1.1/agent-usage-darwin-arm64.tar.gz"
      sha256 "e0802e843acbdd9d822e50f02ae34366ee99ae603e68ac9d30fe106b38ed2e11"
    else
      url "https://github.com/raine/tmux-agent-usage/releases/download/v0.1.1/agent-usage-darwin-amd64.tar.gz"
      sha256 "b0446ad20afe3db5cce5e7b3c5aa08f5eed17be9534ba7edefb3d45124739b4a"
    end
  end

  on_linux do
    url "https://github.com/raine/tmux-agent-usage/releases/download/v0.1.1/agent-usage-linux-amd64.tar.gz"
    sha256 "976f9dbb64e2b2781a780a6693327790732f1bc67e7c2c1d6aa41b421f215f9d"
  end

  def install
    bin.install "agent-usage"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/agent-usage --version")
  end
end

class AgentUsage < Formula
  desc "Display AI agent rate limit usage in your tmux status bar"
  homepage "https://github.com/raine/tmux-agent-usage"
  version "0.1.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/tmux-agent-usage/releases/download/v0.1.7/agent-usage-darwin-arm64.tar.gz"
      sha256 "1601ec6f8f436180f2c31fe85404e5978e43bac00160129a05f65033e548f166"
    else
      url "https://github.com/raine/tmux-agent-usage/releases/download/v0.1.7/agent-usage-darwin-amd64.tar.gz"
      sha256 "0aa85025143a9bb1713eb9ae916568152908c70e03f8ef1a3bab53ad8515d8bf"
    end
  end

  on_linux do
    url "https://github.com/raine/tmux-agent-usage/releases/download/v0.1.7/agent-usage-linux-amd64.tar.gz"
    sha256 "9f7d6bb8dc7970ed7dbb59e751d918c4309e53983771b9ef995989c3c4cc8ec0"
  end

  def install
    bin.install "agent-usage"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/agent-usage --version")
  end
end

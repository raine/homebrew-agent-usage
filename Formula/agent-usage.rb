class AgentUsage < Formula
  desc "Display AI agent rate limit usage in your tmux status bar"
  homepage "https://github.com/raine/tmux-agent-usage"
  version "0.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/tmux-agent-usage/releases/download/v0.1.6/agent-usage-darwin-arm64.tar.gz"
      sha256 "f11f409eefbfc28ef1dcc2250c3a6ac1ca552746a8572dae2bbcced8cce3397b"
    else
      url "https://github.com/raine/tmux-agent-usage/releases/download/v0.1.6/agent-usage-darwin-amd64.tar.gz"
      sha256 "81c039dc90d69d7ce12a2a81b0d80c30caa76ada54c84edecafae2f4d3485210"
    end
  end

  on_linux do
    url "https://github.com/raine/tmux-agent-usage/releases/download/v0.1.6/agent-usage-linux-amd64.tar.gz"
    sha256 "9e8a289de4141ac1674dbd0322c0cfe66b2f0a84f48818de68cd29efe343b5fe"
  end

  def install
    bin.install "agent-usage"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/agent-usage --version")
  end
end

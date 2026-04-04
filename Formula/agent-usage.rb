class AgentUsage < Formula
  desc "Display AI agent rate limit usage in your tmux status bar"
  homepage "https://github.com/raine/tmux-agent-usage"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/tmux-agent-usage/releases/download/v0.1.0/agent-usage-darwin-arm64.tar.gz"
      sha256 "603cdbacfe746b20dd9165a85bb18bca47b0d7f4045a31e42fc319fe591e6420"
    else
      url "https://github.com/raine/tmux-agent-usage/releases/download/v0.1.0/agent-usage-darwin-amd64.tar.gz"
      sha256 "81c129d3ef51bead34f8409115b91ce56b4dcb4348e3cd35cdb986b87b2afc1f"
    end
  end

  on_linux do
    url "https://github.com/raine/tmux-agent-usage/releases/download/v0.1.0/agent-usage-linux-amd64.tar.gz"
    sha256 "287e27e03781a3fe1c68d5b0e0a5423a8c8a10dbdf123a84023ee3d2cc5fa0d8"
  end

  def install
    bin.install "agent-usage"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/agent-usage --version")
  end
end

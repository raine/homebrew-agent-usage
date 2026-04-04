class AgentUsage < Formula
  desc "Display AI agent rate limit usage in your tmux status bar"
  homepage "https://github.com/raine/tmux-agent-usage"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/tmux-agent-usage/releases/download/v0.1.2/agent-usage-darwin-arm64.tar.gz"
      sha256 "7420d28bea82830c9abd1db3998ba45d229725739827ddb28c15a5a716f70d81"
    else
      url "https://github.com/raine/tmux-agent-usage/releases/download/v0.1.2/agent-usage-darwin-amd64.tar.gz"
      sha256 "dbb36f7ac7808aeb02314c9f1e3f05728ecce21f823ae3713e3aeef513482bdd"
    end
  end

  on_linux do
    url "https://github.com/raine/tmux-agent-usage/releases/download/v0.1.2/agent-usage-linux-amd64.tar.gz"
    sha256 "6c0cad4134d345b0f02392aeae6343ee1cd89aa196f3cd7d9e6f15a883af1258"
  end

  def install
    bin.install "agent-usage"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/agent-usage --version")
  end
end

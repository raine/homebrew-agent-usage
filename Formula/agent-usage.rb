class AgentUsage < Formula
  desc "Display AI agent rate limit usage in your tmux status bar"
  homepage "https://github.com/raine/tmux-agent-usage"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/tmux-agent-usage/releases/download/v0.1.3/agent-usage-darwin-arm64.tar.gz"
      sha256 "92dc9b72e871441e579257af14d8a2a2757b6a923f457a06c9bea56d481770ee"
    else
      url "https://github.com/raine/tmux-agent-usage/releases/download/v0.1.3/agent-usage-darwin-amd64.tar.gz"
      sha256 "25c11255baca80cd3e01e0dc3fb5e0c51cd4055dea5d3e73b674e6e1017954a8"
    end
  end

  on_linux do
    url "https://github.com/raine/tmux-agent-usage/releases/download/v0.1.3/agent-usage-linux-amd64.tar.gz"
    sha256 "cb71f4c33020f23aed6dad205bff23c66920c93916cd64512f76ca85253dca05"
  end

  def install
    bin.install "agent-usage"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/agent-usage --version")
  end
end

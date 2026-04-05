class AgentUsage < Formula
  desc "Display AI agent rate limit usage in your tmux status bar"
  homepage "https://github.com/raine/tmux-agent-usage"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/tmux-agent-usage/releases/download/v0.1.4/agent-usage-darwin-arm64.tar.gz"
      sha256 "052fc4cce127829d05797365d23350955e713c4054a698e35cc8f139a4bc7438"
    else
      url "https://github.com/raine/tmux-agent-usage/releases/download/v0.1.4/agent-usage-darwin-amd64.tar.gz"
      sha256 "164a7b56f4103ca3d2b2cfdc4506001e65f28b9712a700024ec54dc45d9b7f2d"
    end
  end

  on_linux do
    url "https://github.com/raine/tmux-agent-usage/releases/download/v0.1.4/agent-usage-linux-amd64.tar.gz"
    sha256 "96924300f922b3ab2306603745054a4b13884898dd4002d72e8c5fd901c65217"
  end

  def install
    bin.install "agent-usage"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/agent-usage --version")
  end
end

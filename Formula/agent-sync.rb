class AgentSync < Formula
  desc "Synchronize your AI coding agents' memory across agents"
  homepage "https://github.com/hibeekaey/agent-sync"
  url "https://github.com/hibeekaey/agent-sync/archive/refs/tags/v1.5.0.tar.gz"
  sha256 "97d3942975e181188c804bcd19b495f558a0800788845a04c7b3633adde398c0"
  license "MIT"

  def install
    bin.install "bin/agent"
    man1.install "docs/agent.1"
    bash_completion.install "completions/agent.bash" => "agent"
    zsh_completion.install "completions/_agent"
  end

  test do
    assert_match "agent v", shell_output("#{bin}/agent version")
  end
end

class AgentSync < Formula
  desc "Synchronize your AI coding agents' memory across agents"
  homepage "https://github.com/hibeekaey/agent-sync"
  url "https://github.com/hibeekaey/agent-sync/archive/refs/tags/v1.6.1.tar.gz"
  sha256 "141be326e6e61f91b168072cca5324fa836058b6a4334b2b64748f0f59c07242"
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

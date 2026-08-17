class AgentSync < Formula
  desc "Synchronize your AI coding agents' memory across agents"
  homepage "https://github.com/hibeekaey/agent-sync"
  url "https://github.com/hibeekaey/agent-sync/archive/refs/tags/v1.5.6.tar.gz"
  sha256 "40091eab9345a5246b3aff2bd7f45bb688b4aa8c885ea501b922a4033a0ff89c"
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

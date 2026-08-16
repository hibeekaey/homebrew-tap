class AgentSync < Formula
  desc "Synchronize your AI coding agents' memory across agents"
  homepage "https://github.com/hibeekaey/agent-sync"
  url "https://github.com/hibeekaey/agent-sync/archive/refs/tags/v1.5.1.tar.gz"
  sha256 "b20c724dc03d132b4a5b7632219152668514723e58a7597208fb04a76e298754"
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

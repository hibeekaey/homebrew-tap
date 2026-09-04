class AgentSync < Formula
  desc "Synchronize your AI coding agents' memory across agents"
  homepage "https://github.com/hibeekaey/agent-sync"
  url "https://github.com/hibeekaey/agent-sync/archive/refs/tags/v1.8.1.tar.gz"
  sha256 "1a07e3be49b48751268900061fbeb82378df4a556ad7a7746a5cb0dd9b62e621"
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

class AgentAlign < Formula
  desc "Sync MCP configs across coding agents"
  homepage "https://github.com/timbuchinger/agent-align"
  version "2.11.0"

  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/timbuchinger/agent-align/releases/download/v#{version}/agent-align-darwin-arm64.tar.gz"
      sha256 "460329f1c8288799e56d1a34cfc79fb71bfe23d3dbcb85e02e129e26455796b3"
    end
    on_intel do
      url "https://github.com/timbuchinger/agent-align/releases/download/v#{version}/agent-align-darwin-amd64.tar.gz"
      sha256 "f75b23dabcf1ae550dda62a2c22e36219c4fb4416f2b09793910e124179a8cca"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/timbuchinger/agent-align/releases/download/v#{version}/agent-align-linux-amd64.tar.gz"
      sha256 "f2026d690bcc0009764f070017ad51c91055df8a07ad698986a70d92ce3c39f6"
    end
    on_arm do
      url "https://github.com/timbuchinger/agent-align/releases/download/v#{version}/agent-align-linux-arm64.tar.gz"
      sha256 "d58268b1e27eb9379482f18e15454eaebc1ce887332f6a7af46ab888f0c159e3"
    end
  end

  def install
    bin.install "agent-align"
    prefix.install_metafiles
  end

  test do
    assert_predicate bin/"agent-align", :exist?
    assert_predicate bin/"agent-align", :executable?
  end
end

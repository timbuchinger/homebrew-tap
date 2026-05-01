class AgentAlign < Formula
  desc "Sync MCP configs across coding agents"
  homepage "https://github.com/timbuchinger/agent-align"
  version "2.13.0"

  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/timbuchinger/agent-align/releases/download/v#{version}/agent-align-darwin-arm64.tar.gz"
      sha256 "57afae5816cf7cc67a293c8b8c8d3694eeb857302a8a2fa8b1048961170531be"
    end
    on_intel do
      url "https://github.com/timbuchinger/agent-align/releases/download/v#{version}/agent-align-darwin-amd64.tar.gz"
      sha256 "aa4a23553bffcb5eed7d8b1ca5ec39741a05ed4bb2945b605779a3cc5df1f3f8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/timbuchinger/agent-align/releases/download/v#{version}/agent-align-linux-amd64.tar.gz"
      sha256 "6f3eef830d07d63924018c230b81e91ddf468a57a44f1907c91c3ae294735dbc"
    end
    on_arm do
      url "https://github.com/timbuchinger/agent-align/releases/download/v#{version}/agent-align-linux-arm64.tar.gz"
      sha256 "a08995cd5d90f2e7bc032947f70e964a72689599f8d2627ad071352187a16781"
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

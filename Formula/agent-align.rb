class AgentAlign < Formula
  desc "Sync MCP configs across coding agents"
  homepage "https://github.com/timbuchinger/agent-align"
  version "2.12.3"

  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/timbuchinger/agent-align/releases/download/v#{version}/agent-align-darwin-arm64.tar.gz"
      sha256 "bbca087c35b37e686fd8b2919e54431cb38d09cccb72b44fc1a4f05707e9d27b"
    end
    on_intel do
      url "https://github.com/timbuchinger/agent-align/releases/download/v#{version}/agent-align-darwin-amd64.tar.gz"
      sha256 "066fbf31f8848f380e9f9e8ab449ebcf5cff1c883359b557a71bc442c5bf77c5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/timbuchinger/agent-align/releases/download/v#{version}/agent-align-linux-amd64.tar.gz"
      sha256 "fcc01d3441adfd3c23f35aaeffe78415a2df97e09d46df6beb2c8b2036f2454c"
    end
    on_arm do
      url "https://github.com/timbuchinger/agent-align/releases/download/v#{version}/agent-align-linux-arm64.tar.gz"
      sha256 "d42f118ad1a26f6b925907a37243991d6b45013c92393c86d823b6e458a6459b"
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

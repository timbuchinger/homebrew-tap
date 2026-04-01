class AgentAlign < Formula
  desc "Sync MCP configs across coding agents"
  homepage "https://github.com/timbuchinger/agent-align"
  version "2.12.2"

  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/timbuchinger/agent-align/releases/download/v#{version}/agent-align-darwin-arm64.tar.gz"
      sha256 "14679c569901f1f3b802b7c7005dc846adb6f40e5616ad5b875887a97454d69b"
    end
    on_intel do
      url "https://github.com/timbuchinger/agent-align/releases/download/v#{version}/agent-align-darwin-amd64.tar.gz"
      sha256 "d05b49c8fa4283ad4dda24c76a372ef0c348dc57dc267d4d011b35d656e89735"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/timbuchinger/agent-align/releases/download/v#{version}/agent-align-linux-amd64.tar.gz"
      sha256 "8b26aa1b424e6dd724e76cff6947531bcd23fdd6f028c8bf9700b1430ca47137"
    end
    on_arm do
      url "https://github.com/timbuchinger/agent-align/releases/download/v#{version}/agent-align-linux-arm64.tar.gz"
      sha256 "fdd96c2c189e4f8529066111a275ad615635788fcdc669d97bd5db3b08da98e5"
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

class AgentAlign < Formula
  desc "Sync MCP configs across coding agents"
  homepage "https://github.com/timbuchinger/agent-align"
  version "2.6.0"

  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/timbuchinger/agent-align/releases/download/v#{version}/agent-align-darwin-arm64.tar.gz"
      sha256 "28b6c7b0555e18aded5db19fc129931bd9370a5a94fe91dbe81d879cc3789b3c"
    end
    on_intel do
      url "https://github.com/timbuchinger/agent-align/releases/download/v#{version}/agent-align-darwin-amd64.tar.gz"
      sha256 "c35486242f594f8a314ee7c9c1d9ca5b7d78aaface4644b9cafdfbb5b37b4225"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/timbuchinger/agent-align/releases/download/v#{version}/agent-align-linux-amd64.tar.gz"
      sha256 "de6bb984cefc04d1b383ee1c6e255df87158cf824ab2a134f5fb16ea683e032e"
    end
    on_arm do
      url "https://github.com/timbuchinger/agent-align/releases/download/v#{version}/agent-align-linux-arm64.tar.gz"
      sha256 "1b70f69787b4e47f0d4c7e528754a13a50d5914d959ee03d52927fbebbf3a17f"
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

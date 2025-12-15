# Documentation: https://docs.brew.sh/Formula-Cookbook
class AgentAlign < Formula
  desc "Sync MCP configs across coding agents"
  homepage "https://github.com/timbuchinger/agent-align"
  version "0.0.0"

  license "MIT"

  on_macos do
  on_arm do
    url "https://github.com/timbuchinger/agent-align/releases/download/v#{version}/agent-align-darwin-arm64.tar.gz"
    sha256 "b5982637c589429252135b55c942865819b4ffdd77db27e9b2bf2d10d928882c"
  end
  on_intel do
    url "https://github.com/timbuchinger/agent-align/releases/download/v#{version}/agent-align-darwin-amd64.tar.gz"
    sha256 "e25de7a440b25f1b3fc08f6261af22203ff6a8ae51791df4890dff7475ee14ea"
  end
end

    on_intel do
      url "https://github.com/timbuchinger/agent-align/releases/download/v#{version}/agent-align-darwin-amd64.tar.gz"
      sha256 "<DARWIN_AMD_SHA>" # Placeholder for SHA256
    end
  end

  on_linux do
  on_intel do
    url "https://github.com/timbuchinger/agent-align/releases/download/v#{version}/agent-align-linux-amd64.tar.gz"
    sha256 "bbeae031456260f95f0bff8ea889cf986c90b66670334e81b7a65259bffe130e"
  end
  on_arm do
    url "https://github.com/timbuchinger/agent-align/releases/download/v#{version}/agent-align-linux-arm64.tar.gz"
    sha256 "c3c76714f86c03a8781e543c915711d76c207ac40b0473f78ffc040d24e870da"
  end
end

    on_arm do
      url "https://github.com/timbuchinger/agent-align/releases/download/v#{version}/agent-align-linux-arm64.tar.gz"
      sha256 "<LINUX_ARM_SHA>" # Placeholder for SHA256
    end
  end

  def install
    # Release tarballs contain a single prebuilt `agent-align` executable.
    bin.install "agent-align"
    prefix.install_metafiles
  end

  test do
    assert_predicate bin/"agent-align", :exist?
    assert_predicate bin/"agent-align", :executable?
  end
end

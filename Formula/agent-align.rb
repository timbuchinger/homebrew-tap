# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://docs.brew.sh/rubydoc/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class AgentAlign < Formula
  desc ""
  homepage "https://github.com/timbuchinger/agent-align"
  version "2.5.4"

  license ""

  on_macos do
    on_arm do
      url "https://github.com/timbuchinger/agent-align/releases/download/v#{version}/agent-align-darwin-arm64.tar.gz"
      sha256 "sha256:1f9d76653cb0d74053d1af3164a984f9c78fc1747775399defcd318673d2dc21"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/timbuchinger/agent-align/releases/download/v#{version}/agent-align-linux-amd64.tar.gz"
      sha256 "sha256:1dae30eb3f46b04c88260129b13fbaa158bd990607fe04f140b28c5055271109"
    end
  end

  # depends_on "cmake" => :build

  # Additional dependency
  # resource "" do
  #   url ""
  #   sha256 ""
  # end

  def install
    # The release tarball already contains a single prebuilt executable.
    # Install that binary into Homebrew's `bin` and ship any metafiles.
    bin.install  "agent-align-darwin_#{Hardware::CPU.arm? ? "arm64" : "amd64"}" => "agent-align"

    prefix.install_metafiles
  end

  test do
    # Verify the executable was installed and is runnable.
    assert_predicate bin/"agent-align", :exist?
    assert_predicate bin/"agent-align", :executable?
  end
end

# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://docs.brew.sh/rubydoc/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class AgentAlign < Formula
  desc ""
  homepage "https://github.com/timbuchinger/agent-align"
  version "2.5.3"

  license ""

  on_macos do
    on_arm do
      url "https://github.com/timbuchinger/agent-align/releases/download/v#{version}/agent-align-darwin-arm64.tar.gz"
      sha256 "sha256:20bfc1f3432ddc0d535218ac8b02c9d3d412f3db1bfa0aa5b30a22d19f346e50"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/timbuchinger/agent-align/releases/download/v#{version}/agent-align-linux-amd64.tar.gz"
      sha256 "947a20418c4948da9dde5423b862b6d7ab7281c8916474489a08dd4af6e3af42"
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
    bin.install "agent-align"
    prefix.install_metafiles
  end

  test do
    # Verify the executable was installed and is runnable.
    assert_predicate bin/"agent-align", :exist?
    assert_predicate bin/"agent-align", :executable?
  end
end

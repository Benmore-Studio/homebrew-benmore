class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "2.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v2.2.1/benmore-darwin-arm64.tar.gz"
      sha256 "c738d25c86a2da10c9812ab9c653ad6f686dbe5d1c0932c5b90f70c25bd0a57a"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 2.2.1", shell_output("#{bin}/benmore version")
  end
end

class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "2.2.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v2.2.6/benmore-darwin-arm64.tar.gz"
      sha256 "7e2157d35bc256ee0d8f004b9806d4b35319db5efd65bfc0ade79d9a7405ff2b"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 2.2.6", shell_output("#{bin}/benmore version")
  end
end

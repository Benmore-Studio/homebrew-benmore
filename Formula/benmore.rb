class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "1.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v1.7.0/benmore-darwin-arm64.tar.gz"
      sha256 "86212476ef6c4e6884d72ab71968baa71fda6495e1096993667841b25ef3a7cd"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 1.7.0", shell_output("#{bin}/benmore version")
  end
end

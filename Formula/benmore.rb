class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "1.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v1.5.1/benmore-darwin-arm64.tar.gz"
      sha256 "ea28bf05770ee55da929821ff87341c351e43e5140697d002d05cc60eb794632"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 1.5.1", shell_output("#{bin}/benmore version")
  end
end

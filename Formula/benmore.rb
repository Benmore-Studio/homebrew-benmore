class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "2.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v2.2.3/benmore-darwin-arm64.tar.gz"
      sha256 "de4759230ec9c6493c6257f4924b2d95146128ec4a4e65a7bd0358c96a06a509"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 2.2.3", shell_output("#{bin}/benmore version")
  end
end

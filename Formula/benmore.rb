class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "2.2.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v2.2.9/benmore-darwin-arm64.tar.gz"
      sha256 "c190d7c6e1850551bfb3a0963c7e1c18489e5879315ea2e54e2ab5020d56c230"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 2.2.9", shell_output("#{bin}/benmore version")
  end
end

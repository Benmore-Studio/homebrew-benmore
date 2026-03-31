class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "1.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v1.4.0/benmore-darwin-arm64.tar.gz"
      sha256 "6884e8142ed8538e357d90a6434059ffc7bbd3fbcdb7116926c7280d86822d6c"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 1.4.0", shell_output("#{bin}/benmore version")
  end
end

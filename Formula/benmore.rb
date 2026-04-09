class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "1.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v1.5.0/benmore-darwin-arm64.tar.gz"
      sha256 "5a13c5a2e49387e110e6736715a4126c5e220e335b2fe2fd3fbdcfb295b566d6"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 1.5.0", shell_output("#{bin}/benmore version")
  end
end

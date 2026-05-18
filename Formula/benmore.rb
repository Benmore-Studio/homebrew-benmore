class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "2.2.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v2.2.11/benmore-darwin-arm64.tar.gz"
      sha256 "4130a582c320e242b9c648724681c0c0d55af28db701a1910b242f5035373039"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 2.2.11", shell_output("#{bin}/benmore version")
  end
end

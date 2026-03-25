class Benmore < Formula
  desc "Turn HTML + SQL into secure web apps"
  homepage "https://benmore.ai"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v0.3.0/benmore-darwin-arm64.tar.gz"
      sha256 "da2f688e2a9c28e6a1e2ce0f2fa1a17c65b1c23486465a4209c08cb758ced310"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 0.3.0", shell_output("#{bin}/benmore version")
  end
end

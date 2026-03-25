class Benmore < Formula
  desc "Turn HTML + SQL into secure web apps"
  homepage "https://benmore.ai"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v0.4.0/benmore-darwin-arm64.tar.gz"
      sha256 "439be184f9dab58d0d44562b6e50e31c7d1efaa6166782c6ce62b9ee9c142f88"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 0.4.0", shell_output("#{bin}/benmore version")
  end
end

class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v1.3.0/benmore-darwin-arm64.tar.gz"
      sha256 "55cda9b8cf81e17ed076d0d626e247526a8b834c48668e11e82e62748ad46dbc"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 1.3.0", shell_output("#{bin}/benmore version")
  end
end

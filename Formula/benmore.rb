class Benmore < Formula
  desc "The web framework for AI-driven development"
  homepage "https://benmore.ai"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v1.1.0/benmore-darwin-arm64.tar.gz"
      sha256 "fc1f8c6dbc95688be6b2e26a4833cd32be0b849e0c376cac760e0a62ff6b3278"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 1.1.0", shell_output("#{bin}/benmore version")
  end
end

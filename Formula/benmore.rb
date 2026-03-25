class Benmore < Formula
  desc "Turn HTML + SQL into secure web apps"
  homepage "https://benmore.ai"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benmore-Studio/benmore-releases/releases/download/v0.1.0/benmore-darwin-arm64.tar.gz"
      sha256 "6767af7fac0cff11bd1f531bcae66ca4c84ed32a4eb7c89226ea5534ae8eb143"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "benmore-darwin-arm64" => "benmore"
    end
  end

  test do
    assert_match "benmore 0.1.0", shell_output("#{bin}/benmore version")
  end
end

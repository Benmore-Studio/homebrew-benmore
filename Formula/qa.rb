class Qa < Formula
  desc "Evidence-first frontend verification CLI"
  homepage "https://github.com/Benmore-Studio/automated-qa"
  url "https://github.com/Benmore-Studio/automated-qa/releases/download/v0.11.0/automated-qa-v0.11.0-multi-platform.tar.gz"
  sha256 "3a5bf1705172855d8dbc6de66c238e78f4a726965997a952dac60db298c249a1"
  license :cannot_represent

  depends_on "node"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"bin/qa.mjs"
    mv bin/"qa.mjs", bin/"qa"
    bin.install_symlink "qa" => "automated-qa"
    bin.write_exec_script libexec/"install-skill.sh"
    mv bin/"install-skill.sh", bin/"qa-install-skill"
  end

  test do
    assert_match "automated-qa 0.11.0", shell_output("#{bin}/qa --version")
    assert_match "evidence-first frontend verification", shell_output("#{bin}/automated-qa --help")
  end
end

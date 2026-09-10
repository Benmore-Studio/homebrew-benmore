require "digest"
require "json"

class Qa < Formula
  desc "Evidence-first frontend verification CLI"
  homepage "https://github.com/Benmore-Studio/automated-qa"
  url "https://github.com/Benmore-Studio/automated-qa/archive/refs/tags/v0.10.0.tar.gz"
  sha256 "95de709345d325f6f2f47abc5625ba8a682f32e5b19379e3dffc62bd9f64144f"
  license "Apache-2.0"

  depends_on "rust" => :build
  depends_on "node"

  def install
    system "cargo", "install", *std_cargo_args(path: "agent")

    prebuilt = "agent/prebuilt/qa-agent"
    mkdir_p File.dirname(prebuilt)
    cp bin/"qa-agent", prebuilt
    rm bin/"qa-agent"
    chmod 0555, prebuilt

    manifest = {
      schemaVersion:   1,
      protocolVersion: 1,
      version:         version.to_s,
      binaries:        [{
        platform: OS.mac? ? "darwin" : "linux",
        arch:     Hardware::CPU.arm? ? "arm64" : "x64",
        path:     prebuilt,
        sha256:   Digest::SHA256.file(prebuilt).hexdigest,
      }],
    }
    File.write "agent/release-manifest.json", JSON.pretty_generate(manifest)
    rm_r "agent/target" if File.exist?("agent/target")

    libexec.install Dir["*"]
    bin.write_exec_script libexec/"bin/qa.mjs"
    mv bin/"qa.mjs", bin/"qa"
    bin.install_symlink "qa" => "automated-qa"
  end

  test do
    assert_match "automated-qa 0.10.0", shell_output("#{bin}/qa --version")
    assert_match "evidence-first frontend verification", shell_output("#{bin}/automated-qa --help")
  end
end

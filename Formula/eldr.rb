class Eldr < Formula
  desc "Zero-crate hardware monitor and protective watchdog for Apple Silicon"
  homepage "https://github.com/Arakiss/eldr"
  url "https://github.com/Arakiss/eldr/archive/refs/tags/v0.12.0.tar.gz"
  sha256 "07dcaf8ca1662bc6918fc9dc234403f9b8a4c5fa1f74daadbe4ed017f9b6b16b"
  license "MIT"
  head "https://github.com/Arakiss/eldr.git", branch: "main"

  depends_on "rust" => :build
  depends_on arch: :arm64
  depends_on :macos

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "0.12.0", shell_output("#{bin}/eldr version")
  end
end

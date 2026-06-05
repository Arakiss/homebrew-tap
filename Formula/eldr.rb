class Eldr < Formula
  desc "Zero-crate hardware monitor and protective watchdog for Apple Silicon"
  homepage "https://github.com/Arakiss/eldr"
  url "https://github.com/Arakiss/eldr/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "36410e45fb4248bdeadeca059118274fedc26a4d43ac3168aad29c1d9601d57e"
  license "MIT"
  head "https://github.com/Arakiss/eldr.git", branch: "main"

  depends_on "rust" => :build
  depends_on arch: :arm64
  depends_on :macos

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "0.5.0", shell_output("#{bin}/eldr version")
  end
end

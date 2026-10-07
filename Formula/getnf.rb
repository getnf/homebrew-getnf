class Getnf < Formula
  desc "Install Nerd Fonts from the terminal"
  homepage "https://github.com/getnf/getnf"
  url "https://github.com/getnf/getnf/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "35f2e859e2e6e0a8ed30bb2b691e23cd9270f6fb64c330b72269eaca76658d9b"
  license "GPL-3.0-or-later"

  depends_on "curl"

  def install
    bin.install "getnf"
    man1.install "man/getnf.1" if File.exist?("man/getnf.1")
  end

  test do
    assert_match "getnf [options]", shell_output("#{bin}/getnf -h")
    assert_match version.to_s, shell_output("#{bin}/getnf -V").strip
  end
end

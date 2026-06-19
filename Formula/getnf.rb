class Getnf < Formula
  desc "Install Nerd Fonts from the terminal"
  homepage "https://github.com/getnf/getnf"
  url "https://github.com/getnf/getnf/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "80ca53081804c19af7b80ed4b5da958cfae07d1d0ae96998a9341300d2e998e4"
  license "GPL-3.0-or-later"

  depends_on "curl"

  def install
    bin.install "getnf"
  end

  test do
    output = shell_output("#{bin}/getnf -h")
    assert_match "Usage:", output
    assert_match "getnf [options]", output
  end
end

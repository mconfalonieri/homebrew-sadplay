class Sadplay < Formula
  desc "Simple SDL AdLib player"
  homepage "https://sadplay.marcoconfalonieri.it"
  url "https://github.com/mconfalonieri/sadplay/releases/download/v1.1.2/sadplay-1.1.2.tar.gz"
  sha256 "cca51c356c1054b8b62aed7f7487b1a26f01766eb83cdf4c6bc9dbe305351b32"
  license "GPL-3.0"

  depends_on "make" => :build
  depends_on "adplug"
  depends_on "fftw"
  depends_on "sdl2"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "gmake", "install"
  end
end

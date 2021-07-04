class Sadplay < Formula
  desc "Simple SDL AdLib player"
  homepage "https://sadplay.marcoconfalonieri.it"
  url "https://github.com/mconfalonieri/sadplay/releases/download/v1.1.0/sadplay-1.1.0.tar.gz"
  sha256 "d38111f01f2345fe022a55c8a35ee83826049655e40acf1321ef7764a0cb6b7c"
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

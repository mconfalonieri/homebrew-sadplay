class Sadplay < Formula
  desc "Simple SDL AdLib player"
  homepage "https://sadplay.marcoconfalonieri.it"
  url "https://github.com/mconfalonieri/sadplay/releases/download/v1.1.1/sadplay-1.1.1.tar.gz"
  sha256 "2752e23677549498e8932bdc5c2bff3943ed01df86116d38778ad2451e473576"
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

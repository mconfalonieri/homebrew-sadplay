class Sadplay < Formula
  desc "Simple SDL AdLib player"
  homepage "https://sadplay.marcoconfalonieri.it"
  url "https://github.com/mconfalonieri/sadplay/releases/download/v1.0.1/sadplay-1.0.1.tar.gz"
  sha256 "d6432fb944bdbe79030ce2bf4e9b88f2228ffe9ea13e594d0afd1c371e52ad84"
  license "GPL-3.0"

  depends_on "make" => :build
  depends_on "adplug"
  depends_on "fftw"
  depends_on "sdl2"


  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "gmake", "install"
  end

  test do
    system "#{bin}/sadplay"
  end
end

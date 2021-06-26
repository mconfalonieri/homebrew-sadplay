class Sadplay < Formula
  desc "Simple SDL AdLib player"
  homepage "https://sadplay.marcoconfalonieri.it"
  url "https://github.com/mconfalonieri/sadplay/releases/download/v1.0.1/sadplay-1.0.1.tar.gz"
  sha256 "d6432fb944bdbe79030ce2bf4e9b88f2228ffe9ea13e594d0afd1c371e52ad84"
  license "GPL-3.0"

  depends_on "make" => :build
  depends_on "sdl2"
  depends_on "fftw" => "3"
  depends_on "adplug" => "2.3"


  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "gmake", "install"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test sadplay`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "#{bin}/sadplay"
  end
end

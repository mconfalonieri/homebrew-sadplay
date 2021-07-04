class Sadplay < Formula
  desc "Simple SDL AdLib player"
  homepage "https://sadplay.marcoconfalonieri.it"
  url "https://github.com/mconfalonieri/sadplay/releases/download/v1.1.0/sadplay-1.1.0.tar.gz"
  sha256 "d38111f01f2345fe022a55c8a35ee83826049655e40acf1321ef7764a0cb6b7c"
  license "GPL-3.0"

  depends_on "make" => :build
  depends_on "sdl2"
  depends_on "fftw"
  depends_on "adplug"


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

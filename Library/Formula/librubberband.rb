require 'formula'

class Librubberband <Formula
  url 'http://code.breakfastquay.com/attachments/download/1/rubberband-1.5.0.tar.bz2'
  homepage 'http://www.breakfastquay.com/rubberband/'
  md5 'c5f288d644fcd46bd159e187bcc33f25'

  depends_on 'pkg-config'
  depends_on 'libsamplerate'
  depends_on 'libsndfile'
  depends_on 'fftw'
  depends_on 'vamp-plugin-sdk'
  depends_on 'ladspa_sdk'

  def patches
    # fix Makefile.in for osx
    "http://gist.github.com/raw/462943/3693331836f635be1c3f174adaa3ec8cb072f0df/fix%20Makefile.in%20from%20librubberband%20for%20osx"
  end

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make install"
  end
end

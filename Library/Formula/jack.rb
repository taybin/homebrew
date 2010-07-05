require 'formula'

class Jack <Formula
  url 'http://jackaudio.org/downloads/jack-audio-connection-kit-0.118.0.tar.gz'
  homepage 'http://jackaudio.org'
  md5 'd58e29a55f285d54e75134cec8e02a10'
  head 'http://subversion.jackaudio.org/jack/trunk/jack'

  depends_on 'pkg-config'
  depends_on 'celt' => :optional

  def download_strategy
    if ARGV.include? '--HEAD'
      SubversionDownloadStrategy
    else
      CurlDownloadStrategy
    end
  end

  def install
    if ARGV.include? '--HEAD'
      ENV['ACLOCAL_FLAGS'] = "-I/usr/local/share/aclocal"
      system "./autogen.sh"
    end
    system "./configure", "--disable-debug", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make install"
  end
end

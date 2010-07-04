require 'formula'

class Liblo <Formula
  url 'http://downloads.sourceforge.net/liblo/liblo-0.26.tar.gz'
  homepage 'http://liblo.sourceforge.net/'
  md5 '5351de14262560e15e7f23865293b16f'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make install"
  end
end

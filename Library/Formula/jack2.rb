require 'formula'

class Jack2 <Formula
  depends_on 'readline'
  depends_on 'pkg-config'
  depends_on 'celt' => :optional

  url 'http://www.grame.fr/~letz/jack-1.9.5.tar.bz2'
  homepage 'http://jackaudio.org'
  md5 'fdb86434b57255139b72c7f91e827fea'

  def install
    ENV['CFLAGS'] = nil
    ENV['CXXFLAGS'] = nil

    system "./waf configure --prefix=#{prefix}"
    system "./waf build"
    system "./waf install"
  end
end

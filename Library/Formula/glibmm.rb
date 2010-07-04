require 'formula'

class Glibmm <Formula
  url 'http://ftp.gnome.org/pub/GNOME/sources/glibmm/2.22/glibmm-2.22.2.tar.bz2'
  homepage 'http://www.gtkmm.org'
  md5 '8deb936c2f8d66e0b300fc6a973d28ce'

  depends_on 'pkg-config'
  depends_on 'glib'
  depends_on 'libsigc++'

  def install
    system "./configure", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make install"
  end
end

class AppstreamGlib < Formula
  homepage "https://github.com/hughsie/appstream-glib"
  #url "https://github.com/hughsie/appstream-glib/archive/appstream_glib_0_7_2.tar.gz"
  #sha256 "80231ffc8db3a470722a5ceb85c933260649636d3a4355b075a76e6c8803b5ba"
  url "https://github.com/hughsie/appstream-glib/archive/appstream_glib_0_6_13.tar.gz"
  sha256 "4114f51ab2aa88c512b236973682518c5916563e19f08a8aeaa7e227604e9f05"

  depends_on "automake" => :build
  depends_on "autoconf" => :build
  depends_on "libtool" => :build
  depends_on "glib" => :build
  depends_on "docbook" => :build
  depends_on "docbook-xsl" => :build
  depends_on "gtk-doc" => :build
  #depends_on "rpm" => :build
  depends_on "gtk+3" => :build
  depends_on "sqlite" => :build
  depends_on "libsoup" => :build
  depends_on "gettext" => :build
  depends_on "libarchive" => :build
  depends_on "libyaml" => :build
  depends_on "meson" => :build
  depends_on "ninja" => :build
  depends_on "pkg-config" => :build
  #depends_on "ossp-uuid" => :build
  depends_on "json-glib" => :build
  depends_on "gdk-pixbuf" => :build
  depends_on "libpng" => :build
  depends_on "pango" => :build
  depends_on "cairo" => :build
  depends_on "pixman" => :build
  depends_on "fontconfig" => :build
  depends_on "freetype" => :build
  depends_on "harfbuzz" => :build
  depends_on "graphite2" => :build
  depends_on "libepoxy" => :build
  depends_on "atk" => :build
  depends_on "gcab" => :build
  depends_on "gobject-introspection" => :build
  depends_on "libffi" => :build

  def install
    ENV["XML_CATALOG_FILES"] = "#{etc}/xml/catalog"
    ENV["UUID_CFLAGS"] = "-iwithsysroot /usr/include/uuid"
    ENV["UUID_LIBS"] = " "

    system "./autogen.sh", "--prefix=#{prefix}", "--disable-stemmer", "--disable-gtk-doc", "--disable-rpm", "--disable-silent-rules"
    system "make"
    system "make", "install"
  end
end
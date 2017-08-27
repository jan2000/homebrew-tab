class AppstreamGlib < Formula
  homepage "https://github.com/hughsie/appstream-glib"
  url "https://github.com/hughsie/appstream-glib/archive/appstream_glib_0_7_2.tar.gz"
  sha256 "80231ffc8db3a470722a5ceb85c933260649636d3a4355b075a76e6c8803b5ba"

  depends_on "automake" => :build
  depends_on "autoconf" => :build
  depends_on "libtool" => :build
  depends_on "glib" => :build
  depends_on "docbook" => :build
  depends_on "gtk-doc" => :build
  depends_on "gobject-introspection" => :build
  depends_on "rpm" => :build
  depends_on "gtk+3" => :build
  depends_on "sqlite" => :build
  depends_on "libsoup" => :build
  depends_on "gettext" => :build
  depends_on "libarchive" => :build
  depends_on "libyaml" => :build

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end
end
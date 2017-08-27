class TransmissionRemoteGtk < Formula
  homepage "https://code.google.com/p/transmission-remote-gtk/"
  url "https://github.com/transmission-remote-gtk/transmission-remote-gtk/archive/1.3.1.tar.gz"
  sha256 "6344a4c4dd455f68030c96b5491cc6f36e9d0e2f104e2f27666fd2d4f9beab34"

  depends_on :x11
  depends_on "intltool" => :build
  depends_on "pkg-config" => :build
  depends_on "automake" => :build
  depends_on "autoconf" => :build
  depends_on "autoconf-archive" => :build
  depends_on "gtk+3"
  depends_on "json-glib"

  def install
    system "./autogen.sh"
    system "./configure", "--prefix=#{prefix}", "--enable-gtk3"
    system "make", "install"
  end
end
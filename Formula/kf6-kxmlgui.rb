class Kf6Kxmlgui < Formula
  desc "KDE Frameworks 6 – Kxmlgui"
  url  "https://download.kde.org/stable/frameworks/6.13/kxmlgui-6.13.0.tar.xz"
  sha256 "e106482d3bb15f7afdeeb5542e0f0f3ca26b9b5c6374a03ca18153d5d2750de6"
  license "LGPL-2.0-or-later"
  depends_on "qt6"
  depends_on "extra-cmake-modules" => :build
  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end
end

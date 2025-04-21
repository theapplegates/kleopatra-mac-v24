class Kf6Kwidgetsaddons < Formula
  desc "KDE Frameworks 6 – Kwidgetsaddons"
  url  "https://download.kde.org/stable/frameworks/6.13/kwidgetsaddons-6.13.0.tar.xz"
  sha256 "a1538829997319f8af0044ed7ae84f79b4e18cf2b32cacd4fdc4748b8f1c7406"
  license "LGPL-2.0-or-later"
  depends_on "qt6"
  depends_on "extra-cmake-modules" => :build
  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end
end

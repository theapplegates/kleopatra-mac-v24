class Kf6Ki18n < Formula
  desc "KDE Frameworks 6 – Ki18n"
  url  "https://download.kde.org/stable/frameworks/6.13/ki18n-6.13.0.tar.xz"
  sha256 "cd1adbcde1badfb7ac8945c3c0a9afc02b2ed642c769d74e1bcb70a02d070dc5"
  license "LGPL-2.0-or-later"
  depends_on "qt6"
  depends_on "extra-cmake-modules" => :build
  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end
end

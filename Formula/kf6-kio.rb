class Kf6Kio < Formula
  desc "KDE Frameworks 6 – Kio"
  url  "https://download.kde.org/stable/frameworks/6.13/kio-6.13.0.tar.xz"
  sha256 "431552d0b740f357c4db7de2e28dcf0ec28e2bfb041a042da5708ae26ec2a203"
  license "LGPL-2.0-or-later"
  depends_on "qt6"
  depends_on "extra-cmake-modules" => :build
  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end
end

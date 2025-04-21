class Kf6Kcoreaddons < Formula
  desc "KDE Frameworks 6 – Kcoreaddons"
  url  "https://download.kde.org/stable/frameworks/6.13/kcoreaddons-6.13.0.tar.xz"
  sha256 "a110bc3303c541fbac3e2d3aa93c2eb25413055de24634a69034210f6dfddbdb"
  license "LGPL-2.0-or-later"
  depends_on "qt6"
  depends_on "extra-cmake-modules" => :build
  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end
end

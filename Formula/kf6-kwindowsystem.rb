class Kf6Kwindowsystem < Formula
  desc "KDE Frameworks 6 – Kwindowsystem"
  url  "https://download.kde.org/stable/frameworks/6.13/kwindowsystem-6.13.0.tar.xz"
  sha256 "6e7f0ea1bd5b1b0f81f785ff0fddeb943222382f1c11b5201f69b6c62763b6f6"
  license "LGPL-2.0-or-later"
  depends_on "qt6"
  depends_on "extra-cmake-modules" => :build
  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end
end

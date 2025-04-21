class Kf6Kstatusnotifieritem < Formula
  desc "KDE Frameworks 6 – Kstatusnotifieritem"
  url  "https://download.kde.org/stable/frameworks/6.13/kstatusnotifieritem-6.13.0.tar.xz"
  sha256 "ed387fdee3dcb5bc3fa956ef6bb99bd2d4c0ed56ee5e2f1d89abaeb0c0b4de9a"
  license "LGPL-2.0-or-later"
  depends_on "qt6"
  depends_on "extra-cmake-modules" => :build
  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end
end

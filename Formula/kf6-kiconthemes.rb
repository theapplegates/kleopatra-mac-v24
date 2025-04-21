class Kf6Kiconthemes < Formula
  desc "KDE Frameworks 6 – Kiconthemes"
  url  "https://download.kde.org/stable/frameworks/6.13/kiconthemes-6.13.0.tar.xz"
  sha256 "a3278c5d29c2fdb0ef5dd72a0d5f9b5a75c072663026e1e4fdbb27f51bfa5aa1"
  license "LGPL-2.0-or-later"
  depends_on "qt6"
  depends_on "extra-cmake-modules" => :build
  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end
end

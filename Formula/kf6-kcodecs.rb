class Kf6Kcodecs < Formula
  desc "KDE Frameworks 6 – Kcodecs"
  url  "https://download.kde.org/stable/frameworks/6.13/kcodecs-6.13.0.tar.xz"
  sha256 "dddde05d970d026ae6a2b31e3559532107f4de60f26d7d87a45733176e122082"
  license "LGPL-2.0-or-later"
  depends_on "qt6"
  depends_on "extra-cmake-modules" => :build
  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end
end

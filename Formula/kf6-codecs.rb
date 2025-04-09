class Kf6Codecs < Formula
  desc "KDE Frameworks 6: Codecs library"
  homepage "https://invent.kde.org/frameworks/kcodecs"
  url "https://download.kde.org/stable/frameworks/6.0/6.0.0/kcodecs-6.0.0.tar.xz"
  sha256 "45e6b0e2f05008a4029b5ea61f6881fcb8d8e4c3e1ef2b9e6b157c9b84358a17"
  license "LGPL-2.0-or-later"

  depends_on "cmake" => :build
  depends_on "extra-cmake-modules" => :build
  depends_on "qt@6"

  def install
    args = std_cmake_args + %W[
      -DBUILD_TESTING=OFF
    ]
    system "cmake", ".", *args
    system "make", "install"
  end
end

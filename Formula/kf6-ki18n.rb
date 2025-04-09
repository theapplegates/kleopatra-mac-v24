class Kf6Ki18n < Formula
  desc "KDE internationalization framework for KF6"
  homepage "https://invent.kde.org/frameworks/ki18n"
  url "https://download.kde.org/stable/release-service/24.02.0/src/ki18n-24.02.0.tar.xz"
  sha256 "d91b558fbd84a32dfad33b598689ec9e2035ac0c2323f0f1b11ecfa63d99903e"
  license "LGPL-2.0-only"

  depends_on "cmake" => :build
  depends_on "extra-cmake-modules" => :build
  depends_on "gettext"
  depends_on "qt@6"

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

  test do
    system "true"
  end
end

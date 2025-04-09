class Kf6Ki18n < Formula
  desc "KF6 Internationalization framework"
  homepage "https://api.kde.org/frameworks/ki18n/html/index.html"
  url "https://download.kde.org/stable/release-service/24.02.0/src/ki18n-24.02.0.tar.xz"
  sha256 "6f0dc9202362b5a42d6e8be98f0df8c151f7c27936d5b3a20550cb6f5a3b6a4a"
  license "LGPL-2.0-only"

  depends_on "cmake" => :build
  depends_on "gettext"
  depends_on "qt@6"

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end
end

class Kf6Kcmutils < Formula
  desc "KDE Frameworks 6 – Kcmutils"
  url  "https://download.kde.org/stable/frameworks/6.13/kcmutils-6.13.0.tar.xz"
  sha256 "11f0323b8db9d21517962af0ffbbef5ba3f93c0f119881ded08be9400dc15c8f"
  license "LGPL-2.0-or-later"
  depends_on "qt6"
  depends_on "extra-cmake-modules" => :build
  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end
end

class Kf6Kconfig < Formula
  desc "KDE Frameworks 6 – Kconfig"
  url  "https://download.kde.org/stable/frameworks/6.13/kconfig-6.13.0.tar.xz"
  sha256 "2ec66c996288df472fcc3aba50540e266fb6218d60d38e7a4a445d4b193f9445"
  license "LGPL-2.0-or-later"
  depends_on "qt6"
  depends_on "extra-cmake-modules" => :build
  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end
end

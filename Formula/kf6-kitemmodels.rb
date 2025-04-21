class Kf6Kitemmodels < Formula
  desc "KDE Frameworks 6 – Kitemmodels"
  url  "https://download.kde.org/stable/frameworks/6.13/kitemmodels-6.13.0.tar.xz"
  sha256 "62688311082b6aca226117810bc3991b0cb95158dec4d4c800d70a99bdcfdfc8"
  license "LGPL-2.0-or-later"
  depends_on "qt6"
  depends_on "extra-cmake-modules" => :build
  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end
end

class Kf6Kservice < Formula
  desc "KDE Frameworks 6 – KService"
  url "https://download.kde.org/stable/frameworks/6.13/kservice-6.13.0.tar.xz"
  sha256 "65d9542f729d30be3dcc12aa2ebeb50238ce4d30a850775f9b006b9b9f1c1cd5"
  license "LGPL-2.0-or-later"

  depends_on "qt6"
  depends_on "extra-cmake-modules" => :build

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end
end

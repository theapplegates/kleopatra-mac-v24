class Kf6Kcrash < Formula
  desc "KDE Frameworks 6 – Kcrash"
  url  "https://download.kde.org/stable/frameworks/6.13/kcrash-6.13.0.tar.xz"
  sha256 "c0b96110d25faa35587ac4af30cd1e3a8012133fcac12276e8b25977cd9b84a4"
  license "LGPL-2.0-or-later"
  depends_on "qt6"
  depends_on "extra-cmake-modules" => :build
  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end
end

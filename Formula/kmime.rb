class Kmime < Formula
  desc "Library for handling MIME data"
  homepage "https://invent.kde.org/pim/kmime"
  url "https://download.kde.org/stable/release-service/24.02.0/src/kmime-24.02.0.tar.xz"
  sha256 "4f1251484f18b6eedf62c9219a504e6357de5adff4016cc34a714dd0cb748065"
  license "LGPL-2.0-or-later"
  
  depends_on "cmake" => :build
  depends_on "extra-cmake-modules" => :build
  depends_on "kf6-kcodecs"
  depends_on "qt6-base"

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end
end

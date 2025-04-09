class Kmime < Formula
  desc "KDE library for handling MIME types"
  homepage "https://invent.kde.org/libraries/kmime"
  url "https://download.kde.org/stable/release-service/24.02.0/src/kmime-24.02.0.tar.xz"
  sha256 "86f0cf9b71ed27f1dfea607cf150b157470a10811231b17c6180edfd575b7f7f"
  license "LGPL-2.1-only"

  depends_on "cmake" => :build
  depends_on "extra-cmake-modules" => :build
  depends_on "ninja" => :build

  depends_on "theapplegates/kleopatra-mac-v24/kf6-codecs"
  depends_on "theapplegates/kleopatra-mac-v24/kf6-ki18n"

  def install
    system "cmake", "-B", "build", "-S", ".", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

  test do
    system "#{bin}/kmime_version", "--version"
  end
end

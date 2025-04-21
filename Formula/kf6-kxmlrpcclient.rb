class Kf6Kxmlrpcclient < Formula
  desc "KDE Frameworks 6 – KXmlRpcClient"
  homepage "https://invent.kde.org/frameworks/kxmlrpcclient"
  url "https://download.kde.org/stable/frameworks/6.13/kxmlrpcclient-6.13.0.tar.xz"
  sha256 "340c8464c2007ce3f80682e15dfafa4180b641d53c14201b929906b7b0284d87"
  license "LGPL-2.1-or-later"

  depends_on "qt6"
  depends_on "extra-cmake-modules" => :build

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end
end

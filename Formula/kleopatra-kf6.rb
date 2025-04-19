class KleopatraKf6 < Formula
  desc "Certificate Manager and GUI for OpenPGP and CMS cryptography"
  homepage "https://apps.kde.org/kleopatra/"
  url "https://download.kde.org/stable/release-service/24.02.0/src/kleopatra-24.02.0.tar.xz"
  sha256 "20af58ab639ea99df09acbd74af0c867f22f1d9f91595623ab44fba5834eaa62"
  head "https://invent.kde.org/pim/kleopatra.git", branch: "master"
  license all_of: ["GPL-2.0-only", "GPL-3.0-only", "LGPL-2.1-only", "LGPL-3.0-only"]
  
  # Make it keg-only to prevent conflicts with other kde/gpgme libs
  keg_only "not linked to prevent conflicts with any gpgme or kde libs"

  # Build dependencies
  depends_on "boost" => :build
  depends_on "cmake" => :build
  depends_on "extra-cmake-modules" => :build
  depends_on "kdoctools" => :build
  depends_on "pkg-config" => :build
  depends_on "python3" => :build

  # Runtime dependencies
  depends_on "dbus"
  depends_on "gettext"
  depends_on "gnupg"
  depends_on "gpgme"
  depends_on "libassuan"
  depends_on "libgpg-error"
  depends_on "qt@6"

  # KF6 dependencies
  resource "kf6-kcoreaddons" do
    url "https://download.kde.org/stable/frameworks/6.0/kcoreaddons-6.0.0.tar.xz"
    sha256 "eab838201b45ac98c412f64d234e89d62357f275ae9ae966d073a64c67a526ef"
  end

  resource "kf6-kconfig" do
    url "https://download.kde.org/stable/frameworks/6.0/kconfig-6.0.0.tar.xz"
    sha256 "3f7c1e6b048df4ab3d67fbef01a5ad1dd0289c9b158644668fba0225c050c050"
  end

  resource "kf6-kcodecs" do
    url "https://download.kde.org/stable/frameworks/6.0/kcodecs-6.0.0.tar.xz"
    sha256 "ceba44dcdc251d443bbd6cb77d1219d876af8cc2ae4710472aace78122395abe"
  end

  resource "kf6-kguiaddons" do
    url "https://download.kde.org/stable/frameworks/6.0/kguiaddons-6.0.0.tar.xz"
    sha256 "20af58ab639ea99df09acbd74af0c867f22f1d9f91595623ab44fba5834eaa62"
  end

  resource "kf6-ki18n" do
    url "https://download.kde.org/stable/frameworks/6.0/ki18n-6.0.0.tar.xz"
    sha256 "15cbfb73ef1d3954d6206755b6e6a9c86ea27be4b4db0c843d38494851bcc354"
  end

  resource "kf6-kwidgetsaddons" do
    url "https://download.kde.org/stable/frameworks/6.0/kwidgetsaddons-6.0.0.tar.xz"
    sha256 "a7771c92310a21a8105ba64dd61c065ba74723899c7ccfc4de2b57b17e6a6b63"
  end

resource "kwindowsystem" do
  url "https://download.kde.org/stable/frameworks/6.0/kwindowsystem-6.0.0.tar.xz"
  sha256 "1906caa53b7d58fc0c4d78a3c8d99f25aa056fc6d09c5fc121ed5e1f80396a94"
end

resource "kcrash" do
  url "https://download.kde.org/stable/frameworks/6.0/kcrash-6.0.0.tar.xz"
  sha256 "f56f1ed44e494417b7046e4f94791ad4ddd07c6cb8f0f704f2053717a44296f9"
end

  resource "kf6-kitemmodels" do
    url "https://download.kde.org/stable/frameworks/6.0/kitemmodels-6.0.0.tar.xz"
    sha256 "89b879981722821a911bba1765128820217944fa78e5452369158ed97a835b3a"
  end

resource "kiconthemes" do
  url "https://download.kde.org/stable/frameworks/6.0/kiconthemes-6.0.0.tar.xz"
    sha256 "f557bd269fafe617eb8d4b7ac2959609f96cce3ea8b1b3ac231063a726927bb0"
end


  resource "kf6-kconfigwidgets" do
    url "https://download.kde.org/stable/frameworks/6.0/kconfigwidgets-6.0.0.tar.xz"
    sha256 "511bed0d95de186b3cf62c7192bbb6020450d4861f05c1a545356144f17de532"
  end

  resource "kf6-kstatusnotifieritem" do
    url "https://download.kde.org/stable/frameworks/6.0/kstatusnotifieritem-6.0.0.tar.xz"
    sha256 "b426176d2cbc6fe80c758b6c476a47341d89a92cbb3355c2be37428a41772907"
  end

resource "kio" do
  url "https://download.kde.org/stable/frameworks/6.0/kio-6.0.0.tar.xz"
  sha256 "4951adf043299e463803cc63ed33d5261b81bff969eb189dc13350f495cb4b42"
end

  resource "kf6-kxmlgui" do
url "https://download.kde.org/stable/frameworks/6.0/kxmlgui-6.0.0.tar.xz"
sha256 "d26c62ce9f5be8643fed465531418fb67e4d13edf61797a946da301aeb9158f2"
  end

  resource "kf6-kcmutils" do
    url "https://download.kde.org/stable/frameworks/6.0/kcmutils-6.0.0.tar.xz"
    sha256 "9b09b140c013d568a2ee357f824bfb64145e4dfdd1689da6fbfb4f418c5ba43b"
  end

  # kmime
  resource "kmime" do
  url "https://download.kde.org/stable/release-service/24.02.0/src/kmime-24.02.0.tar.xz"
  sha256 "4f1251484f18b6eedf62c9219a504e6357de5adff4016cc34a714dd0cb748065"
  end

  resource "libkleo" do
    url "https://download.kde.org/stable/release-service/24.02.0/src/libkleo-24.02.0.tar.xz"
    sha256 "ade428daca544798314a3a5b577efe8417c6d2182f74e427f3d7c79c3ca1b96c"
  end

  resource "mimetreeparser" do
    url "https://download.kde.org/stable/release-service/24.02.0/src/mimetreeparser-24.02.0.tar.xz"
    sha256 "sha256 "5d0546c49e8fd5d639ba68ae0a790260aae5e1d068737587f2bdc5c110ff97ef"
  end

  # qgpgme
resource "gpgme-qt6" do
    url "https://www.gnupg.org/ftp/gcrypt/gpgme/gpgme-1.23.2.tar.bz2"
    sha256 "9499e8b1f33cccb6815527a1bc16049d35a6198a6c5fae0185f2bd561bce5224"
  end

  def install
    args = std_cmake_args
    args << "-DBUILD_QCH=ON"
    args << "-DBUILD_WITH_QT6=ON"
    args << "-DCMAKE_PREFIX_PATH=#{Formula["qt@6"].opt_prefix}"
    args << "-DREQ_KF6_VERSION=6.0.0"

    # Build gpgme with Qt6 support
    resource("gpgme-qt6").stage do
      system "./configure", "--disable-dependency-tracking",
                            "--disable-silent-rules",
                            "--prefix=#{prefix}",
                            "--enable-languages=cpp,qt6"
      system "make"
      system "make", "install"
    end

    # Build KF6 components
    %w[kf6-kcoreaddons kf6-kconfig kf6-kcodecs kf6-kguiaddons kf6-ki18n 
       kf6-kwidgetsaddons kf6-kwindowsystem kf6-kcrash kf6-kitemmodels 
       kf6-kiconthemes kf6-kconfigwidgets kf6-kstatusnotifieritem
       kf6-kio kf6-kxmlgui kf6-kcmutils].each do |kf6_component|
      resource(kf6_component).stage do
        kf6_args = std_cmake_args
        kf6_args << "-DBUILD_QCH=ON"
        kf6_args << "-DBUILD_WITH_QT6=ON"
        kf6_args << "-DCMAKE_PREFIX_PATH=#{Formula["qt@6"].opt_prefix}"
        
        system "cmake", ".", *kf6_args
        system "make", "install"
      end
    end

    # Build PIM components
    %w[kmime libkleo mimetreeparser].each do |pim_component|
      resource(pim_component).stage do
        pim_args = std_cmake_args
        pim_args << "-DBUILD_QCH=ON"
        pim_args << "-DBUILD_WITH_QT6=ON"
        pim_args << "-DCMAKE_PREFIX_PATH=#{Formula["qt@6"].opt_prefix}"
        
        system "cmake", ".", *pim_args
        system "make", "install"
      end
    end

    # Fix for Kleopatra 24.02 with KF6
    inreplace "src/dialogs/certificatedetailswidget.cpp" do |s|
      s.gsub!(/ifdef USE_RANGES/, "if 0")
    end

    # Build Kleopatra
    system "cmake", ".", *args
    system "make", "install"

    # Fix runtime path for dylibs
    kleopatra_bin = "#{prefix}/bin/kleopatra"
    system "install_name_tool", "-add_rpath", "#{prefix}/lib", kleopatra_bin
    system "install_name_tool", "-add_rpath", "#{HOMEBREW_PREFIX}/lib", kleopatra_bin
  end

  def post_install
    # Create desktop entry
    mkdir_p "#{prefix}/Applications"
    system "ln", "-sf", "#{bin}/kleopatra", "#{prefix}/Applications/Kleopatra"
  end

  def caveats
    <<~EOS
      After Installing:

      Make sure dbus is running
      To start dbus manually, run:
        eval $(dbus-launch --auto-syntax)

      Select pinentry-mac as the default program
        brew install pinentry-mac
        echo "pinentry-program #{HOMEBREW_PREFIX}/bin/pinentry-mac" > ~/.gnupg/gpg-agent.conf
        killall -9 gpg-agent

      To launch Kleopatra:
        #{opt_prefix}/bin/kleopatra
    EOS
  end

  test do
    system "#{bin}/kleopatra", "--help"
  end
end

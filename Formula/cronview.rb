class Cronview < Formula
  desc "Terminal calendar viewer for your cron jobs"
  homepage "https://github.com/roma-888/cronview"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/roma-888/cronview/releases/download/v0.5.0/cronview-darwin-arm64"
      sha256 "87645ab61e13f67cb4edb0ca115500515b96ad5c24a57865c5b4ffeaba25cf07"
    end
    on_intel do
      url "https://github.com/roma-888/cronview/releases/download/v0.5.0/cronview-darwin-x64"
      sha256 "ec40a10c1392cda45b8fd0bbbf234bcb4553ac62829728936dd02ce6c9c78d21"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/roma-888/cronview/releases/download/v0.5.0/cronview-linux-arm64"
      sha256 "dfd1491a084c20159d42d5badfac26f2f38345e824fef8a182acd6676aa0bed2"
    end
    on_intel do
      url "https://github.com/roma-888/cronview/releases/download/v0.5.0/cronview-linux-x64"
      sha256 "7ce07126c89b0321c8ccdbe0b346e093cce77493a1062c63f8189b2162e5defe"
    end
  end

  def install
    bin.install Dir["cronview-*"].first => "cronview"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cronview --version")
  end
end

class Cronview < Formula
  desc "Terminal calendar viewer for your cron jobs"
  homepage "https://github.com/roma-888/cronview"
  version "0.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/roma-888/cronview/releases/download/v0.6.2/cronview-darwin-arm64"
      sha256 "5d9d1d2410429e639d68cf1fc23773f81a8fdaa119417ea5e941216458d194e7"
    end
    on_intel do
      url "https://github.com/roma-888/cronview/releases/download/v0.6.2/cronview-darwin-x64"
      sha256 "38809dbc84517672922e87917e35ee0f483ae83b5c71389f1656d10b4d78b252"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/roma-888/cronview/releases/download/v0.6.2/cronview-linux-arm64"
      sha256 "e2c9f8df42be30e81f084aead6041b871962000de2677eddfa4cd2f70f3f7dd6"
    end
    on_intel do
      url "https://github.com/roma-888/cronview/releases/download/v0.6.2/cronview-linux-x64"
      sha256 "dec4b640b1dd259aced7fd02cc5d7c742868e280e5b6b1f406953af7ec3debde"
    end
  end

  def install
    bin.install Dir["cronview-*"].first => "cronview"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cronview --version")
  end
end

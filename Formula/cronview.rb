class Cronview < Formula
  desc "Terminal calendar viewer for your cron jobs"
  homepage "https://github.com/roma-888/cronview"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/roma-888/cronview/releases/download/v0.6.0/cronview-darwin-arm64"
      sha256 "56197ff6d4e1165a47b4bd137547d9442a62b598715ce90ad97ffe2f09410028"
    end
    on_intel do
      url "https://github.com/roma-888/cronview/releases/download/v0.6.0/cronview-darwin-x64"
      sha256 "a53fafb8f4b7efb365578ca73e3e0941a722f4992cd9eba8004c02f3839df35f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/roma-888/cronview/releases/download/v0.6.0/cronview-linux-arm64"
      sha256 "162242a362fa9c60a6ade7673bcbcca5e962cff3543011893b496e2562543aac"
    end
    on_intel do
      url "https://github.com/roma-888/cronview/releases/download/v0.6.0/cronview-linux-x64"
      sha256 "9b3a77369ddd2d489e073364137e00aa3b3207117f9653f21a44ceaf9ec8729f"
    end
  end

  def install
    bin.install Dir["cronview-*"].first => "cronview"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cronview --version")
  end
end

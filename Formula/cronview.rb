class Cronview < Formula
  desc "Terminal calendar viewer for your cron jobs"
  homepage "https://github.com/roma-888/cronview"
  version "0.6.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/roma-888/cronview/releases/download/v0.6.3/cronview-darwin-arm64"
      sha256 "85bce066abe51ea49c526ff85a5bfa00fa86c4e73d59e59d1923d43164efbee5"
    end
    on_intel do
      url "https://github.com/roma-888/cronview/releases/download/v0.6.3/cronview-darwin-x64"
      sha256 "6a38985b7e0f6427fe7db219f38b724879500e6a97a331e6e72213658656b053"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/roma-888/cronview/releases/download/v0.6.3/cronview-linux-arm64"
      sha256 "1b497396c469693ac632ade157b3542e0ffb86f1aa72f42b4c8521ea9ed9622e"
    end
    on_intel do
      url "https://github.com/roma-888/cronview/releases/download/v0.6.3/cronview-linux-x64"
      sha256 "54d0a3c8bd6a213e5f93daf6fc42919bf488110169fe5ad315c15bfed285f9e2"
    end
  end

  def install
    bin.install Dir["cronview-*"].first => "cronview"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cronview --version")
  end
end

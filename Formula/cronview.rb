class Cronview < Formula
  desc "Terminal calendar viewer for your cron jobs"
  homepage "https://github.com/roma-888/cronview"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/roma-888/cronview/releases/download/v0.6.1/cronview-darwin-arm64"
      sha256 "ddfa7c2d5665381e94be87f1e2f04b540de6dc75a161b84d53794b5cb5e3ccb7"
    end
    on_intel do
      url "https://github.com/roma-888/cronview/releases/download/v0.6.1/cronview-darwin-x64"
      sha256 "e3fb285088343f7b8a319dbf95e5b7c611d14c738ae2efa65820ea4e835e21b7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/roma-888/cronview/releases/download/v0.6.1/cronview-linux-arm64"
      sha256 "661b5bdbdc8ae53f296bda28cd45dfdfc4f0603ac7bf6e3d40fd28a6c125e19b"
    end
    on_intel do
      url "https://github.com/roma-888/cronview/releases/download/v0.6.1/cronview-linux-x64"
      sha256 "afe45f44876b569061a39e1387f348cf9b74cbf0a1be66816b0db7b1ffc565fe"
    end
  end

  def install
    bin.install Dir["cronview-*"].first => "cronview"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cronview --version")
  end
end

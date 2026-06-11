class Cronview < Formula
  desc "Terminal calendar viewer for your cron jobs"
  homepage "https://github.com/roma-888/cronview"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/roma-888/cronview/releases/download/v0.7.0/cronview-darwin-arm64"
      sha256 "bd95baa7035b933a29dd6fcc1a5a46ceafc4d872ea9f8bef89bc193cb162a0f6"
    end
    on_intel do
      url "https://github.com/roma-888/cronview/releases/download/v0.7.0/cronview-darwin-x64"
      sha256 "3fe4ea4c6a3373721475ed9265169907d186c4e96aef2fb4422ef309d3d7d1f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/roma-888/cronview/releases/download/v0.7.0/cronview-linux-arm64"
      sha256 "5db2ff65dd7968142ca3558656f7bc208154049ff23c5cd9a4716e404bd7d4c8"
    end
    on_intel do
      url "https://github.com/roma-888/cronview/releases/download/v0.7.0/cronview-linux-x64"
      sha256 "60b5873c9396e8f7674aea606906f1f6c99d78476c8f84ee38ad5772f63f994c"
    end
  end

  def install
    bin.install Dir["cronview-*"].first => "cronview"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cronview --version")
  end
end

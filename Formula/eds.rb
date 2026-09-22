class Eds < Formula
  desc "EdgeSentry unified CLI for tamper-evident audit and IFC scan inspection"
  homepage "https://github.com/edgesentry/edgesentry-rs"
  version "0.2.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/edgesentry/edgesentry-rs/releases/download/v0.2.2/eds-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "eff36a289a896dde825fa862d5912c81acf23a7c09b1a4cd806306d43b2e52f5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/edgesentry/edgesentry-rs/releases/download/v0.2.2/eds-v0.2.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d507c88134f6adb25d66b99654555e6ee1fcfe9a1e430806af624b2a7e9d9db4"
    end
  end

  def install
    bin.install "eds"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eds --version")
  end
end

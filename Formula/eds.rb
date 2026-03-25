class Eds < Formula
  desc "EdgeSentry unified CLI for tamper-evident audit and IFC scan inspection"
  homepage "https://github.com/edgesentry/edgesentry-rs"
  version "0.2.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/edgesentry/edgesentry-rs/releases/download/v0.2.0/eds-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "deb1114e39d37302e033bc2c745d6261121f626cba24be5474cf0c126b6080aa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/edgesentry/edgesentry-rs/releases/download/v0.2.0/eds-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "30d5600bf88d11bddb0c58f0b571506a1e71b6f58534dba975a5887e43cd1a2b"
    end
  end

  def install
    bin.install "eds"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eds --version")
  end
end

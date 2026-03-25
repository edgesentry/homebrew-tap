class Eds < Formula
  desc "EdgeSentry unified CLI for tamper-evident audit and IFC scan inspection"
  homepage "https://github.com/edgesentry/edgesentry-rs"
  version "0.1.3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/edgesentry/edgesentry-rs/releases/download/v0.1.3/eds-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "9dd80181923d538686c27904c0e786bf3f6397be2aa24d2b9a7c5d759a3d060b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/edgesentry/edgesentry-rs/releases/download/v0.1.3/eds-v0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3b1cf44c13ec17c234a86bbd1d4268938a7dec56afff8bd571a9c4d58f881b3f"
    end
  end

  def install
    bin.install "eds"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eds --version")
  end
end

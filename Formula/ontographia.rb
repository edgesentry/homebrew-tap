class Ontographia < Formula
  desc "Multi-ontology deterministic Cypher 25 query builder"
  homepage "https://github.com/edgesentry/ontographia"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/edgesentry/ontographia/releases/download/v0.1.8/ontographia-0.1.8-macos-arm64.tar.gz"
      sha256 "be3035624134dea7a9ad3a4348b18e5d13e850fd02ff45aaf4e8219fc3b86920"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/edgesentry/ontographia/releases/download/v0.1.8/ontographia-0.1.8-linux-x86_64.tar.gz"
      sha256 "60b972453beffbcf2a8400e9084981c8b40f57ab7ec07624baebd9216d36a721"
    end
  end

  def install
    # Prefer `otg`. Older archives only shipped `ontographia`; install that file as `otg`.
    # Homebrew may or may not strip the single top-level directory in the tarball.
    binary = [
      buildpath / "otg",
      *buildpath.glob("ontographia-*/otg"),
      buildpath / "ontographia",
      *buildpath.glob("ontographia-*/ontographia"),
    ].find(&:exist?)
    odie "Expected otg binary in release archive" if binary.nil?

    bin.install binary => "otg"
  end

  test do
    assert_match "otg #{version}", shell_output("#{bin}/otg --version")
  end
end

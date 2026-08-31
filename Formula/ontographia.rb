class Ontographia < Formula
  desc "Multi-ontology deterministic Cypher 25 query builder"
  homepage "https://github.com/edgesentry/ontographia"
  version "0.1.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/edgesentry/ontographia/releases/download/v0.1.3/ontographia-0.1.3-macos-arm64.tar.gz"
      sha256 "c9625f91fb0e0722d7433dd1f918920513ced779aaa21b37b4b832af278234c2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/edgesentry/ontographia/releases/download/v0.1.3/ontographia-0.1.3-linux-x86_64.tar.gz"
      sha256 "a2a8c242b126ac013021534f4542bf793c280317276fef3f1b6a54344dccd6aa"
    end
  end

  def install
    platform_dir = Dir["ontographia-*"].first
    bin.install "#{platform_dir}/ontographia"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ontographia --version")
  end
end

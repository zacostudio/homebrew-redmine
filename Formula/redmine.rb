class Redmine < Formula
  desc "Standalone CLI for Redmine"
  homepage "https://github.com/zacostudio/redmine-cli"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zacostudio/redmine-cli/releases/download/v#{version}/redmine-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "98386ff83a995c513c92c4c792897fc35295f88932bad871c6f3bab7d7619d19"
    end
    on_intel do
      url "https://github.com/zacostudio/redmine-cli/releases/download/v#{version}/redmine-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "191214c95456c2d210d15d1e616a861d6c527cd375f4a0f9b0090bb1b98d12a8"
    end
  end

  on_linux do
    url "https://github.com/zacostudio/redmine-cli/releases/download/v#{version}/redmine-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "da96accc7665af80699145a00c53c9750a1a5f7b7ab06e4d146c69a59c425a1a"
  end

  def install
    bin.install "redmine"
  end

  test do
    assert_match "redmine", shell_output("#{bin}/redmine --version")
  end
end

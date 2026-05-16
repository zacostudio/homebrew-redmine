class Redmine < Formula
  desc "Standalone CLI for Redmine"
  homepage "https://github.com/zacostudio/redmine-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zacostudio/redmine-cli/releases/download/v#{version}/redmine-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "2a0f6669e07b9c6017754e3ade70ffc211b899a06a33a490b93041cc0d78ba79"
    end
    on_intel do
      url "https://github.com/zacostudio/redmine-cli/releases/download/v#{version}/redmine-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "2a04d980581945c89945f606b1fb6dc6f27376542e82ad52136c8beea2c50d63"
    end
  end

  on_linux do
    url "https://github.com/zacostudio/redmine-cli/releases/download/v#{version}/redmine-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6137a6304a66412489f71ba90b596a9306e13fb138c1e9c9e164c9f8230abac0"
  end

  def install
    bin.install "redmine"
  end

  test do
    assert_match "redmine", shell_output("#{bin}/redmine --version")
  end
end

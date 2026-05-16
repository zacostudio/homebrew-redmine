class Redmine < Formula
  desc "Standalone CLI for Redmine"
  homepage "https://github.com/zacostudio/redmine-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zacostudio/redmine-cli/releases/download/v#{version}/redmine-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "42f986f687a5b1b8ae0761d90675a5cbf0648150a6a7d802a58ce64f71c5a693"
    end
    on_intel do
      url "https://github.com/zacostudio/redmine-cli/releases/download/v#{version}/redmine-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "196d8b10ced64667c65683e3a685f545652d488d56eb2f6c3820f56098a8c5be"
    end
  end

  on_linux do
    url "https://github.com/zacostudio/redmine-cli/releases/download/v#{version}/redmine-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8ac8721e0721f59eae299631ed684a1f8142e6c7afb21e2ec40665da518c4b98"
  end

  def install
    bin.install "redmine"
  end

  test do
    assert_match "redmine", shell_output("#{bin}/redmine --version")
  end
end

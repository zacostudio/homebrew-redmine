class Redmine < Formula
  desc "Standalone CLI for Redmine"
  homepage "https://github.com/zacostudio/redmine-cli"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zacostudio/redmine-cli/releases/download/v#{version}/redmine-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "67f59bf214df1b93dec19964a93fee9cde36b0252e2452f48f44869d5bdce925"
    end
    on_intel do
      url "https://github.com/zacostudio/redmine-cli/releases/download/v#{version}/redmine-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "57d90e275d3922f0a75a623fe8747a9b97f3e753d0d0b11e09897d4deab303f9"
    end
  end

  on_linux do
    url "https://github.com/zacostudio/redmine-cli/releases/download/v#{version}/redmine-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "7863fe904f901b3c8b8e28c8eaec796f1d2895ac73050ab0048149eb02f50c37"
  end

  def install
    bin.install "redmine"
  end

  test do
    assert_match "redmine", shell_output("#{bin}/redmine --version")
  end
end

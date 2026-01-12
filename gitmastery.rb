class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  version "7.6.0"

  on_arm do
    url "https://github.com/git-mastery/cli/releases/download/v7.6.0/gitmastery-arm64"
    sha256 "1bc889378411ee940fb40faf553061e8bbdd39597b57ce96d85276ac2c198bb7"
  end

  on_intel do
    url "https://github.com/git-mastery/cli/releases/download/v7.6.0/gitmastery-amd64"
    sha256 "8a3e3d3b3c53b54f2e339c6bef0109993a52d8c009b7d1d1df6bdd0f12bca07b"
  end

  def install
    if Hardware::CPU.arm?
      chmod 0755, "gitmastery-arm64"
      bin.install "gitmastery-arm64" => "gitmastery"
    else
      chmod 0755, "gitmastery-amd64"
      bin.install "gitmastery-amd64" => "gitmastery"
    end
  end

  test do
    system "#{bin}/gitmastery", "--help"
  end
end

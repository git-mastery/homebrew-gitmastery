class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  version "7.8.1"

  on_arm do
    url "https://github.com/git-mastery/cli/releases/download/v7.8.1/gitmastery-arm64"
    sha256 "373f2d3fa0e0dd32140659aeaa79079ec33dae56a29138d8b53de671fe1e476b"
  end

  on_intel do
    url "https://github.com/git-mastery/cli/releases/download/v7.8.1/gitmastery-amd64"
    sha256 "f1b77a465890116de657a52e104878a9a5f85ece53216a2955c26a089cedbcb5"
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

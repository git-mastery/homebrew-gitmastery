class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  version "7.2.0"

  on_arm do
    url "https://github.com/git-mastery/cli/releases/download/v7.2.0/gitmastery-arm64"
    sha256 "6fee0814c062e091c6f4d74cc4f9fa62d5fed2eb424526344689e7d886d067be"
  end

  on_intel do
    url "https://github.com/git-mastery/cli/releases/download/v7.2.0/gitmastery-amd64"
    sha256 "cea5a010b2af6ac7747e0019c047ce10dd37cf7504d3ae8ec8194437c6662e79"
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

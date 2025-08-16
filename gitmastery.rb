class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  version "4.8.5"

  on_arm do
    url "https://github.com/git-mastery/cli/releases/download/v4.8.5/gitmastery-arm64"
    sha256 "587e96cfb2ad2878649616dd8b7f8f925afffbbae14fa07ac4866b36ced4440b"
  end

  on_intel do
    url "https://github.com/git-mastery/cli/releases/download/v4.8.5/gitmastery-amd64"
    sha256 "d2ace3061824ea8f19f8f485f29084827f781f766a5cc02019697cc9137a6303"
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

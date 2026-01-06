class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  version "7.4.1"

  on_arm do
    url "https://github.com/git-mastery/cli/releases/download/v7.4.1/gitmastery-arm64"
    sha256 "f652c06642206db9627ccb15e8bc0fc31eba73fcd9a07e710416e317c5de1374"
  end

  on_intel do
    url "https://github.com/git-mastery/cli/releases/download/v7.4.1/gitmastery-amd64"
    sha256 "f33d1d25c7ed59528d4eb6463a1cf4f773ffdfc4c616fa9a17e7558ab51c54db"
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

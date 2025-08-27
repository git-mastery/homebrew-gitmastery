class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  version "4.12.0"

  on_arm do
    url "https://github.com/git-mastery/cli/releases/download/v4.12.0/gitmastery-arm64"
    sha256 "bb7b18efead5d86f64593b184c56b7e2a9c8c4bc61e4033fb164b5e455491af2"
  end

  on_intel do
    url "https://github.com/git-mastery/cli/releases/download/v4.12.0/gitmastery-amd64"
    sha256 "55fbb2c670cbb4d0f72120012ef7711fbec78eb33e7baa5c1c85bba3a2b06d16"
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

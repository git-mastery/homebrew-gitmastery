class Gitmastery < Formula
  desc "CLI tool for Git-Mastery"
  homepage "https://github.com/git-mastery/cli"
  version "7.5.0"

  on_arm do
    url "https://github.com/git-mastery/cli/releases/download/v7.5.0/gitmastery-arm64"
    sha256 "5ec27db1d0505351d26bac0735a93025491ea41519c7ae66b63f8d9e43110fef"
  end

  on_intel do
    url "https://github.com/git-mastery/cli/releases/download/v7.5.0/gitmastery-amd64"
    sha256 "01d624cc1b5008a93a3420ba9c17ddda11c2bdf25ea1edfc4e31c2f285134362"
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

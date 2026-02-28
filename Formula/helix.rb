class Helix < Formula
  desc "Helix CLI"
  homepage "https://github.com/helixframework/helix"
  url "https://github.com/helixframework/helix/releases/latest/download/helix-cli.zip"
  sha256 "REPLACE_WITH_RELEASE_SHA256"
  license "Apache-2.0"

  def install
    if (buildpath/"helix-cli/bin/helix").exist?
      libexec.install Dir["helix-cli/*"]
    elsif (buildpath/"bin/helix").exist?
      libexec.install Dir["*"]
    else
      odie "Unable to find helix executable in release archive"
    end

    bin.install_symlink libexec/"bin/helix"
  end

  test do
    assert_match "helix", shell_output("#{bin}/helix --help")
  end
end

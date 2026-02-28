class HelixDev < Formula
  desc "Developer bootstrap command for the Helix repository"
  homepage "https://github.com/helixframework/helix"
  url "https://github.com/helixframework/helix/archive/refs/heads/main.tar.gz"
  version "main"
  sha256 :no_check
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install "helix-dev-setup/scripts/helix-dev", "helix-dev-setup/scripts/bootstrap-dev.sh"
    (bin/"helix-dev").write_env_script libexec/"helix-dev", HELIX_DEV_BOOTSTRAP: (libexec/"bootstrap-dev.sh")
  end

  test do
    assert_match "helix-dev - Helix repository bootstrap utility", shell_output("#{bin}/helix-dev help")
    assert_match "0.1.0", shell_output("#{bin}/helix-dev version")
  end
end

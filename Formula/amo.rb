class Amo < Formula
  desc "Advanced workflow automation CLI tool for productivity and task management"
  homepage "https://github.com/amo-run/amo-cli"
  license "MIT"
  version "0.1.12"

  on_macos do
    on_intel do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.12/amo_darwin_amd64"
      sha256 "30b321617b3e1654f404da9907d68e15d79a4bcfa40380989aeecbd4c383d683"
    end
  end

  on_macos do
    on_arm do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.12/amo_darwin_arm64"
      sha256 "50b5c15f20202f8fb9879d0df5b1a29ca22e1ca13bf4dcbcf89cb10b69ab2199"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.12/amo_linux_amd64"
      sha256 "dbd61907ef6eab3715741a9fa19a1d7667ea6c681ff06ddae89788bdb8348209"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.12/amo_linux_arm64"
      sha256 "838c587563dd2d0912f2d4bbbedf4f87eab7fb4ee492cbf18afd76dd254d3cab"
    end
  end

  def install
    bin.install Dir["amo_*"].first => "amo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/amo version")
    assert_match "amo", shell_output("#{bin}/amo --help")
    system bin/"amo", "tool", "list"
    system bin/"amo", "workflow", "list"
    system bin/"amo", "config", "ls"
  end
end

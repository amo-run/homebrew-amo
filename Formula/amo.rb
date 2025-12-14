class Amo < Formula
  desc "Advanced workflow automation CLI tool for productivity and task management"
  homepage "https://github.com/amo-run/amo-cli"
  license "MIT"
  version "0.1.17"

  on_macos do
    on_intel do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.17/amo_darwin_amd64"
      sha256 "1d8df6ab4193ecc764656694cc59856d4ff41fb397c1dcaa0be1aed7605e5250"
    end
  end

  on_macos do
    on_arm do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.17/amo_darwin_arm64"
      sha256 "eedac54a0d20573239533ffc08bdff57847d15c7195055cf03d927ca2ce64526"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.17/amo_linux_amd64"
      sha256 "fb00ce9405b38f556127c362cc53bab961948e0eea408ffcdd342dd9f239d90d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.17/amo_linux_arm64"
      sha256 "2be935ca5a25546fafe20f5e0259b781380abc7d67b4218059630db0918dfa45"
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

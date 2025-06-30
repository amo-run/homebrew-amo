class Amo < Formula
  desc "Advanced workflow automation CLI tool for productivity and task management"
  homepage "https://github.com/amo-run/amo-cli"
  license "MIT"
  version "0.1.9"

  on_macos do
    on_intel do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.9/amo_darwin_amd64"
      sha256 "4b5b129d39157661e1ea42d0c81c902962be0f871b27e07f90d96a2da08b9346"
    end
  end

  on_macos do
    on_arm do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.9/amo_darwin_arm64"
      sha256 "64e9feeb712c850c7c9abc92bcd76ee5e310d73945f02a469fe2836a50f6d217"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.9/amo_linux_amd64"
      sha256 "2f051ad595f2e1aa75fca0669e5067fcb38ec5db83b82be9901107ec430bdc1f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.9/amo_linux_arm64"
      sha256 "414540fe3eacf73a9d00f6c13a1873187399682e3ac3efbc3b97223eccedba67"
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

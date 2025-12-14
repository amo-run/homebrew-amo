class Amo < Formula
  desc "Advanced workflow automation CLI tool for productivity and task management"
  homepage "https://github.com/amo-run/amo-cli"
  license "MIT"
  version "0.1.19"

  on_macos do
    on_intel do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.19/amo_darwin_amd64"
      sha256 "4667f2d9e5db7dfc94bb1797f7eb8641888d9d68d8e47ad4c7f1e5b57d4cdf58"
    end
  end

  on_macos do
    on_arm do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.19/amo_darwin_arm64"
      sha256 "dcb1f2dbeb14f9bfd628db0d0442a57e2f41ae1afdcf8e8c5306b6f84eb2fa69"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.19/amo_linux_amd64"
      sha256 "b6f311aefaae3d39e8df4a9cb5c2dd490488a10db386447cd8e29fb58b84701f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.19/amo_linux_arm64"
      sha256 "16506628dab0ea4b1f45fb9a5dc90a7eb8e2df09085f54bb1ab05cc7853665fe"
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

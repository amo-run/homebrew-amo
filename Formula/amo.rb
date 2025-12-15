class Amo < Formula
  desc "Advanced workflow automation CLI tool for productivity and task management"
  homepage "https://github.com/amo-run/amo-cli"
  license "MIT"
  version "0.1.21"

  on_macos do
    on_intel do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.21/amo_darwin_amd64"
      sha256 "8633a27327ad2cb4d52331590936c2c9cdad9b870e6b267be22c44311dfad01e"
    end
  end

  on_macos do
    on_arm do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.21/amo_darwin_arm64"
      sha256 "f19f9abb221f04c5f92fd5f91abfc600690fcf8cad7483b91d5ec63df3bb4b2e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.21/amo_linux_amd64"
      sha256 "35d8f73edea6a4fc0cc7354b097fae5989a495531edbb8d98cc3bdbf49827975"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.21/amo_linux_arm64"
      sha256 "1c71c93e7f24a6ac7d2a94d19fb49dc84455146426768c5d8f56c30970992ed6"
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

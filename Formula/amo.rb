class Amo < Formula
  desc "Advanced workflow automation CLI tool for productivity and task management"
  homepage "https://github.com/amo-run/amo-cli"
  license "MIT"
  version "0.1.7"

  on_macos do
    on_intel do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.7/amo_darwin_amd64"
      sha256 "c893c72f7f3e423e2c8eacef29da8125257fd315a842950d393d1002fe173af8"
    end
  end

  on_macos do
    on_arm do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.7/amo_darwin_arm64"
      sha256 "0535262c3c46f6e27d99c9081dcbcf0cd9ea895fed52bd9a3b4beaffceae297d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.7/amo_linux_amd64"
      sha256 "9b23dd887cd9538a192c03aca7fdde024f584047a4450615c805008f3baeaea5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.7/amo_linux_arm64"
      sha256 "b5feb54402cb45cd730c5393fe4b0c4a49a630a009ba933816f7a7ebe1152da1"
    end
  end

  def install
    bin.install name => "amo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/amo version")
    assert_match "amo", shell_output("#{bin}/amo --help")
    system bin/"amo", "tool", "list"
    system bin/"amo", "workflow", "list"
    system bin/"amo", "config", "ls"
  end
end

class Amo < Formula
  desc "Advanced workflow automation CLI tool for productivity and task management"
  homepage "https://github.com/amo-run/amo-cli"
  license "MIT"
  version "0.1.11"

  on_macos do
    on_intel do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.11/amo_darwin_amd64"
      sha256 "355fcfa70644a4932c2e4cb7114d31231511186b391dacff1c402f69639f33ff"
    end
  end

  on_macos do
    on_arm do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.11/amo_darwin_arm64"
      sha256 "ecd31375edf4c035108b9bbc1089fdb2eb174dd9d2342a21f38c1fb13cdbb0be"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.11/amo_linux_amd64"
      sha256 "5381222211bce8628c59b88458ea4267021cafab78c06b2e8d1efbb1e37238d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/amo-run/amo-cli/releases/download/v0.1.11/amo_linux_arm64"
      sha256 "f856b81979af6909bfed75ca7376ef00c8e3e8a79b0994fa19a5860fd8d8305d"
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

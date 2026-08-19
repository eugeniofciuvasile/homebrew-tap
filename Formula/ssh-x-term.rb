class SshXTerm < Formula
  desc "TUI to handle multiple SSH connections simultaneously"
  homepage "https://github.com/eugeniofciuvasile/ssh-x-term"
  version "2.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/eugeniofciuvasile/ssh-x-term/releases/download/v2.1.2/ssh-x-term-darwin-arm64"
      sha256 "9644168a44ef506dae8c6374f2e2f1a0ab2faa70c299d379f7b088fb70cc6e85"
    else
      url "https://github.com/eugeniofciuvasile/ssh-x-term/releases/download/v2.1.2/ssh-x-term-darwin-amd64"
      sha256 "d2d68766c6dead631870395f8102d6cd22453a40b131ac0bf90fbdc2f8f24460"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eugeniofciuvasile/ssh-x-term/releases/download/v2.1.2/ssh-x-term-linux-arm64"
      sha256 "6657fbf97eeed21665e113f3e0201ed35506c86666e94fc34f978ef2735d118a"
    else
      url "https://github.com/eugeniofciuvasile/ssh-x-term/releases/download/v2.1.2/ssh-x-term-linux-amd64"
      sha256 "edff83de6879bc393a117897e9392e12f1dbd63ba7a01e1d3391ac7950e7cdaf"
    end
  end

  def install
    bin.install Dir["ssh-x-term-*"].first => "sxt"
  end

  test do
    system "#{bin}/sxt", "--version"
  end
end

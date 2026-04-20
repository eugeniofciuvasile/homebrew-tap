class SshXTerm < Formula
  desc "TUI to handle multiple SSH connections simultaneously"
  homepage "https://github.com/eugeniofciuvasile/ssh-x-term"
  version "2.0.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/eugeniofciuvasile/ssh-x-term/releases/download/v2.0.15/ssh-x-term-darwin-arm64"
      sha256 "4ff86230abe8d34121e4f5aed3e39ab9af10dd3799fc56c64e5506991e9a07f5"
    else
      url "https://github.com/eugeniofciuvasile/ssh-x-term/releases/download/v2.0.15/ssh-x-term-darwin-amd64"
      sha256 "c2ff5a06dfe0ae34fbeb4ee94a324b58ccde8fe6077f55f68941e30dc1fb86a2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eugeniofciuvasile/ssh-x-term/releases/download/v2.0.15/ssh-x-term-linux-arm64"
      sha256 "b331809c555decac88fd24873098d3f33f2af2ea57a41698475e422ea8ce535c"
    else
      url "https://github.com/eugeniofciuvasile/ssh-x-term/releases/download/v2.0.15/ssh-x-term-linux-amd64"
      sha256 "78eff421498479b844581dfd6d9e8c76d2fe3ee8facce43d38852ab5a76158d7"
    end
  end

  def install
    bin.install Dir["ssh-x-term-*"].first => "sxt"
  end

  test do
    system "#{bin}/sxt", "--version"
  end
end

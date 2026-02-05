class SshXTerm < Formula
  desc "TUI to handle multiple SSH connections simultaneously"
  homepage "https://github.com/eugeniofciuvasile/ssh-x-term"
  version "2.0.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/eugeniofciuvasile/ssh-x-term/releases/download/v2.0.12/ssh-x-term-darwin-arm64"
      sha256 "df01a59eda641bd7c7ec226c28b7d5f4cde9af814ea83f577b0682d274e7650a"
    else
      url "https://github.com/eugeniofciuvasile/ssh-x-term/releases/download/v2.0.12/ssh-x-term-darwin-amd64"
      sha256 "236a8ba3c397e251655e3b8d8a35322c0368a0854e1e933eb0b621282e4b9a06"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eugeniofciuvasile/ssh-x-term/releases/download/v2.0.12/ssh-x-term-linux-arm64"
      sha256 "32ae78ca5bb9fcb1bc4cd7b88c9bce39919e851c486619ee2e2c2ff650dc6132"
    else
      url "https://github.com/eugeniofciuvasile/ssh-x-term/releases/download/v2.0.12/ssh-x-term-linux-amd64"
      sha256 "3ea0a6276980d26077b001319ecc6ef2efa16dd7487ba48b35af2493ff4e40e8"
    end
  end

  def install
    bin.install Dir["ssh-x-term-*"].first => "sxt"
  end

  test do
    system "#{bin}/sxt", "--version"
  end
end

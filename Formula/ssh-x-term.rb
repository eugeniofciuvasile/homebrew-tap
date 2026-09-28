class SshXTerm < Formula
  desc "TUI to handle multiple SSH connections simultaneously"
  homepage "https://github.com/eugeniofciuvasile/ssh-x-term"
  version "2.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/eugeniofciuvasile/ssh-x-term/releases/download/v2.1.3/ssh-x-term-darwin-arm64"
      sha256 "6b4a2488b8d3776d5ff5117dba64d600401e4b5313a14ab4319f853ec6f2ec2f"
    else
      url "https://github.com/eugeniofciuvasile/ssh-x-term/releases/download/v2.1.3/ssh-x-term-darwin-amd64"
      sha256 "e0c00909d2a9dc9c4aa9832c2527653a5fd032d085548f0d383f848576c9bd35"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eugeniofciuvasile/ssh-x-term/releases/download/v2.1.3/ssh-x-term-linux-arm64"
      sha256 "262a223c72eabd48e4cd19a0bf480b293ba3d01011d591007922f8c4dc562640"
    else
      url "https://github.com/eugeniofciuvasile/ssh-x-term/releases/download/v2.1.3/ssh-x-term-linux-amd64"
      sha256 "ca2be528b9fa0a1cb904e7abc10ef4bfb257fafaa503c4f97a3143ccf584c193"
    end
  end

  def install
    bin.install Dir["ssh-x-term-*"].first => "sxt"
  end

  test do
    system "#{bin}/sxt", "--version"
  end
end

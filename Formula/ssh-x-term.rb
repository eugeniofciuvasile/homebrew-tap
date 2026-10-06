class SshXTerm < Formula
  desc "TUI to handle multiple SSH connections simultaneously"
  homepage "https://github.com/eugeniofciuvasile/ssh-x-term"
  version "2.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/eugeniofciuvasile/ssh-x-term/releases/download/v2.1.4/ssh-x-term-darwin-arm64"
      sha256 "37aab53479036a54240ffc892401466455edbae442640659d26a6303d51a9a55"
    else
      url "https://github.com/eugeniofciuvasile/ssh-x-term/releases/download/v2.1.4/ssh-x-term-darwin-amd64"
      sha256 "3d63357657f8f4d366d6f636aa7a2c667799d3a49a8c353851da85f425fe1316"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eugeniofciuvasile/ssh-x-term/releases/download/v2.1.4/ssh-x-term-linux-arm64"
      sha256 "c3848cc97bd8138c1f0c556651936bec1da0543e66e835d72c898a12e9219173"
    else
      url "https://github.com/eugeniofciuvasile/ssh-x-term/releases/download/v2.1.4/ssh-x-term-linux-amd64"
      sha256 "a18358d23842ef828cf6f9fa700aafc49cb557aac97d022c70f44cfe07ed320c"
    end
  end

  def install
    bin.install Dir["ssh-x-term-*"].first => "sxt"
  end

  test do
    system "#{bin}/sxt", "--version"
  end
end

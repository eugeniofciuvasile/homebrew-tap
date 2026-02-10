class SshXTerm < Formula
  desc "TUI to handle multiple SSH connections simultaneously"
  homepage "https://github.com/eugeniofciuvasile/ssh-x-term"
  version "2.0.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/eugeniofciuvasile/ssh-x-term/releases/download/v2.0.14/ssh-x-term-darwin-arm64"
      sha256 "a2c063368eca31d0101768f1bb9485e1ef3c918c5dcdb579494abff5d9adc004"
    else
      url "https://github.com/eugeniofciuvasile/ssh-x-term/releases/download/v2.0.14/ssh-x-term-darwin-amd64"
      sha256 "f37753f133dead3b3542cd17ab78fe1f10f45e07dac73ed80bbce7e4d7701592"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eugeniofciuvasile/ssh-x-term/releases/download/v2.0.14/ssh-x-term-linux-arm64"
      sha256 "f5e8a7084d3bcf0ebfe8ae8412247f77bd2621351bded8c2b589b17ef0d65ff3"
    else
      url "https://github.com/eugeniofciuvasile/ssh-x-term/releases/download/v2.0.14/ssh-x-term-linux-amd64"
      sha256 "721c8ada43bd77f351d25276bf403c522b11edaf0df60a2f54384da43b6a3c63"
    end
  end

  def install
    bin.install Dir["ssh-x-term-*"].first => "sxt"
  end

  test do
    system "#{bin}/sxt", "--version"
  end
end

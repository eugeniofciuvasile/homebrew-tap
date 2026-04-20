class SshXTerm < Formula
  desc "TUI to handle multiple SSH connections simultaneously"
  homepage "https://github.com/eugeniofciuvasile/ssh-x-term"
  version "2.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/eugeniofciuvasile/ssh-x-term/releases/download/v2.1.0/ssh-x-term-darwin-arm64"
      sha256 "044a3bc70161178061ea61be15f5d823d39cb82a48aac30361f76d24784ac844"
    else
      url "https://github.com/eugeniofciuvasile/ssh-x-term/releases/download/v2.1.0/ssh-x-term-darwin-amd64"
      sha256 "76350b8f5ecd4b360f7ef02b35d8ec23741b2c0b58683196067b39c202bef9d2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eugeniofciuvasile/ssh-x-term/releases/download/v2.1.0/ssh-x-term-linux-arm64"
      sha256 "a92d033a408b98a66be1c34e78e58ab9444b1956891c41ff5ed8c69801b237ce"
    else
      url "https://github.com/eugeniofciuvasile/ssh-x-term/releases/download/v2.1.0/ssh-x-term-linux-amd64"
      sha256 "2c4267f58f0fd734db95039183c458f66179d39e6235aeb9b8da1ff15a236959"
    end
  end

  def install
    bin.install Dir["ssh-x-term-*"].first => "sxt"
  end

  test do
    system "#{bin}/sxt", "--version"
  end
end

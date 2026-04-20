class SshXTerm < Formula
  desc "TUI to handle multiple SSH connections simultaneously"
  homepage "https://github.com/eugeniofciuvasile/ssh-x-term"
  version "2.0.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/eugeniofciuvasile/ssh-x-term/releases/download/v2.0.16/ssh-x-term-darwin-arm64"
      sha256 "dcad8686bf73dd57d024be4a2c042b9373ef475181e71f8ad03a57f91b493a6d"
    else
      url "https://github.com/eugeniofciuvasile/ssh-x-term/releases/download/v2.0.16/ssh-x-term-darwin-amd64"
      sha256 "b275683d00bf6cd403e28eebb54c7688813ca8dd367550c238ecafa3f10082cf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eugeniofciuvasile/ssh-x-term/releases/download/v2.0.16/ssh-x-term-linux-arm64"
      sha256 "870849afad426fb0db97e5a3de247d2406f55128479e0554f6e86bfefadcbff8"
    else
      url "https://github.com/eugeniofciuvasile/ssh-x-term/releases/download/v2.0.16/ssh-x-term-linux-amd64"
      sha256 "f0d8758f6cd81302d736563a7ea95a260abbe3ca73b9eeb9054b1bce2df62f8b"
    end
  end

  def install
    bin.install Dir["ssh-x-term-*"].first => "sxt"
  end

  test do
    system "#{bin}/sxt", "--version"
  end
end

class SshXTerm < Formula
  desc "TUI to handle multiple SSH connections simultaneously"
  homepage "https://github.com/eugeniofciuvasile/ssh-x-term"
  version "2.0.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/eugeniofciuvasile/ssh-x-term/releases/download/v2.0.11/ssh-x-term-darwin-arm64"
      sha256 "06f467f7562acdaa94b5497d7aa718449281ecb4b7ac9e89772cb680a4ce527d"
    else
      url "https://github.com/eugeniofciuvasile/ssh-x-term/releases/download/v2.0.11/ssh-x-term-darwin-amd64"
      sha256 "863144a4d8da92b75c9a57a4c4d71b648cc36cb45e3a2ab77b56fa5250c826b0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eugeniofciuvasile/ssh-x-term/releases/download/v2.0.11/ssh-x-term-linux-arm64"
      sha256 "3c74327007191f529cf59e23c30fafd17ef9e31d8f414628b008882feec54b3b"
    else
      url "https://github.com/eugeniofciuvasile/ssh-x-term/releases/download/v2.0.11/ssh-x-term-linux-amd64"
      sha256 "aa3b58a47d7aab85488545e68d9185fbc511bd5dc0ab00cdce9eb1e90b60af37"
    end
  end

  def install
    bin.install Dir["ssh-x-term-*"].first => "sxt"
  end

  test do
    system "#{bin}/sxt", "--version"
  end
end

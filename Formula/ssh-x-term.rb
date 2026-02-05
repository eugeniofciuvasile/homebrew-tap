class SshXTerm < Formula
  desc "TUI to handle multiple SSH connections simultaneously"
  homepage "https://github.com/eugeniofciuvasile/ssh-x-term"
  version "2.0.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/eugeniofciuvasile/ssh-x-term/releases/download/v2.0.13/ssh-x-term-darwin-arm64"
      sha256 "67fe437e51a29c292abb39700e6ca54971d0db39c1b90ccad9dc93fe52cf6064"
    else
      url "https://github.com/eugeniofciuvasile/ssh-x-term/releases/download/v2.0.13/ssh-x-term-darwin-amd64"
      sha256 "a13b188b94abd6a0254a65ac64437b4d831b7200dedf12727a6a3b61ebd69ceb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eugeniofciuvasile/ssh-x-term/releases/download/v2.0.13/ssh-x-term-linux-arm64"
      sha256 "8321fe6c628385f9f27f5b55d4c33398f0aaa059a15a253f0c8c429d836829b5"
    else
      url "https://github.com/eugeniofciuvasile/ssh-x-term/releases/download/v2.0.13/ssh-x-term-linux-amd64"
      sha256 "401e391fd2f10470fb49030074be3db2fcd8bee8772ee214999dcb00471937e1"
    end
  end

  def install
    bin.install Dir["ssh-x-term-*"].first => "sxt"
  end

  test do
    system "#{bin}/sxt", "--version"
  end
end

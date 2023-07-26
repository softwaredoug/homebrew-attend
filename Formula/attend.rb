class Attend < Formula
  desc "App that gives you high score for avoiding task switching"
  version "0.0.7"
  homepage "https://github.com/softwaredoug/attend"
  url "https://github.com/softwaredoug/attend.git", :tag => "v0.0.7"
  sha256 "0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef"

  def install
    mv "attend.sh", "attend"

    # Move supporting scripts using libexec
    libexec.install "attend"

    # Supporting scripts include 
    #   idle.sh
    #   focusedapp.scpt
    #   log.sh
    #   tada.mp3
    libexec.install "idle.sh"
    libexec.install "focusedapp.scpt"
    libexec.install "log.sh"
    libexec.install "tada.mp3"

    # Create symlink to attend.sh
    bin.write_exec_script (libexec/"attend")
  end

end

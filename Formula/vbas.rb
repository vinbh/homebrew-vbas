# This file is auto-generated. Do not edit manually.
class Vbas < Formula
  desc "Amazon Q-style dropdown autocomplete for Linux and macOS. Works in zsh and bash."
  homepage "https://github.com/vinbh/vbas"
  version "0.3.0"
  license "PolyForm-Noncommercial-1.0.0"

  on_macos do
    on_intel do
      url "https://github.com/vinbh/vbas/releases/download/v0.3.0/vbas_darwin_amd64.tar.gz"
      sha256 "633402d74f4b197c646827da23bfe555257543fb95bcb864d24975d70d5eae19"
    end
    on_arm do
      url "https://github.com/vinbh/vbas/releases/download/v0.3.0/vbas_darwin_arm64.tar.gz"
      sha256 "df142bea1954f0d3a26af38f3d4b665f5c11e8fadaf2162e305b6a04b8837470"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vinbh/vbas/releases/download/v0.3.0/vbas_linux_amd64.tar.gz"
      sha256 "70e6b10c9d9bf624504f902016d87cf6e49f207e7dd22a4ae5e3f5b0e974ee7e"
    end
    on_arm do
      url "https://github.com/vinbh/vbas/releases/download/v0.3.0/vbas_linux_arm64.tar.gz"
      sha256 "cd827c988f3ee06ef89452c34f598b1b2f33283d738b8c8d01c3468630b68da8"
    end
  end

  def install
    bin.install "vbas"
    pkgshare.install "specs"
    pkgshare.install "shell"
  end

  def caveats
    <<~EOS
      To enable vbas, add one line to your shell rc file:

        zsh  - add to ~/.zshrc:
          source #{opt_pkgshare}/shell/zsh/vbas.zsh

        bash - add to ~/.bashrc:
          source #{opt_pkgshare}/shell/bash/vbas.bash

      Then open a new terminal (or run: source ~/.zshrc).
      No further setup needed - specs are installed automatically.
    EOS
  end

  test do
    system "#{bin}/vbas", "version"
  end
end

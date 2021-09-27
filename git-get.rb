# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitGet < Formula
  desc "Clone git repository in $GIT_GET_PROJECTS_PATH and preserves <githost>/<username>/<repository> structure."
  homepage "https://github.com/pixelfactoryio/git-get"
  version "1.0.1-beta"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pixelfactoryio/git-get/releases/download/v1.0.1-beta/git-get_Darwin_x86_64.tar.gz"
      sha256 "b3892cfc2e8b823aff7a0ed2ca25dea5393d44faa185bce541d8a6b333108f29"
    end
    if Hardware::CPU.arm?
      url "https://github.com/pixelfactoryio/git-get/releases/download/v1.0.1-beta/git-get_Darwin_arm64.tar.gz"
      sha256 "47414e3a2f682fcc548872a2e4eee793bdbc62a243e42b09858e2c436cd87527"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pixelfactoryio/git-get/releases/download/v1.0.1-beta/git-get_Linux_x86_64.tar.gz"
      sha256 "0d2d37c92ff1abebc9183ed13d9578f1a859b68d08ca484dc519851334ab8e1f"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/pixelfactoryio/git-get/releases/download/v1.0.1-beta/git-get_Linux_armv6.tar.gz"
      sha256 "b2e336854556327e841f12da749cf77499febec298ba65d4f5670d30a5b9e8cc"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pixelfactoryio/git-get/releases/download/v1.0.1-beta/git-get_Linux_arm64.tar.gz"
      sha256 "39f0834e6fc1b3192db3d7927cbf8cdb1d156bfdc0620db4a2b5ac9a26363d72"
    end
  end

  def install
    bin.install "git-get"
  end
end

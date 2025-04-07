# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoreleaserTest < Formula
  desc "Install goreleaser-test binaries"
  homepage "https://github.com/blinklabs-io/goreleaser-test"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/blinklabs-io/goreleaser-test/releases/download/v0.1.2/goreleaser-test_0.1.2_darwin_x86_64.tar.gz"
      sha256 "e1330766001ba74f89d98838cf75b2b7f607cd6e3673ca4e9ddf28bdc7359260"

      def install
        bin.install "goreleaser-test"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/blinklabs-io/goreleaser-test/releases/download/v0.1.2/goreleaser-test_0.1.2_darwin_arm64.tar.gz"
      sha256 "53c75b451f4dcc254d831c05246c43ad3966b6be9a6a1bf39a8eeb742ce3e70b"

      def install
        bin.install "goreleaser-test"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/blinklabs-io/goreleaser-test/releases/download/v0.1.2/goreleaser-test_0.1.2_linux_x86_64.tar.gz"
        sha256 "9f5ea60eaad8ab3a96a5440b58a6eadc5f0958c414d6934c7f5005bd53c67672"

        def install
          bin.install "goreleaser-test"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/blinklabs-io/goreleaser-test/releases/download/v0.1.2/goreleaser-test_0.1.2_linux_arm64.tar.gz"
        sha256 "2df2ba18c84fbf04b6cd27e75606596144c9cb4c047261cd0044972c80beb5e4"

        def install
          bin.install "goreleaser-test"
        end
      end
    end
  end
end

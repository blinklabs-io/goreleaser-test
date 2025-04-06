# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoreleaserTest < Formula
  desc ""
  homepage "https://github.com/blinklabs-io/goreleaser-test"
  version "0.0.9"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/blinklabs-io/goreleaser-test/releases/download/v0.0.9/goreleaser-test_0.0.9_darwin_x86_64.tar.gz"
      sha256 "115e368d0658c24eccc90f98b0b281dd04dc38e810374ddc3d89e60a248619e1"

      def install
        bin.install "goreleaser-test"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/blinklabs-io/goreleaser-test/releases/download/v0.0.9/goreleaser-test_0.0.9_darwin_arm64.tar.gz"
      sha256 "074b2c87ac75fb9ce40b33bcaaa21614cf3c02c335815e72a72416fe2ef4a001"

      def install
        bin.install "goreleaser-test"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/blinklabs-io/goreleaser-test/releases/download/v0.0.9/goreleaser-test_0.0.9_linux_x86_64.tar.gz"
        sha256 "d6b0f14011a77f96f46c5a084043b25414881b03cf3cc81c1381aad6a86e8524"

        def install
          bin.install "goreleaser-test"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/blinklabs-io/goreleaser-test/releases/download/v0.0.9/goreleaser-test_0.0.9_linux_arm64.tar.gz"
        sha256 "2b0645d5144f2a948868bffaf868a28bc867fb15994498cee0d2c9771d9bb8e4"

        def install
          bin.install "goreleaser-test"
        end
      end
    end
  end
end

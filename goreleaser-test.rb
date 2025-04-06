# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoreleaserTest < Formula
  desc ""
  homepage "https://github.com/blinklabs-io/goreleaser-test"
  version "0.0.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/blinklabs-io/goreleaser-test/releases/download/v0.0.7/goreleaser-test_0.0.7_darwin_x86_64.tar.gz"
      sha256 "e894e2252b43c7f5da25c87834f9680b24aa9edbc6deb4ac6b60517ca660dc18"

      def install
        bin.install "goreleaser-test"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/blinklabs-io/goreleaser-test/releases/download/v0.0.7/goreleaser-test_0.0.7_darwin_arm64.tar.gz"
      sha256 "5fe8bef2015c53f970b5f959d466893b58f207a0dcecbedace72847b78d960b1"

      def install
        bin.install "goreleaser-test"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/blinklabs-io/goreleaser-test/releases/download/v0.0.7/goreleaser-test_0.0.7_linux_x86_64.tar.gz"
        sha256 "9358ca3c058b73e7716a3ce03fe8b36514c0fcc0e6baff642126ad9b2ef430ec"

        def install
          bin.install "goreleaser-test"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/blinklabs-io/goreleaser-test/releases/download/v0.0.7/goreleaser-test_0.0.7_linux_arm64.tar.gz"
        sha256 "097204ae572c3e9c7b6baf9f752ebcfa7da28456329f68c4bbb81f9221953840"

        def install
          bin.install "goreleaser-test"
        end
      end
    end
  end
end

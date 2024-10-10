class WikiGo < Formula
    desc "Wikipedia command line interface written in Go"
    homepage "https://github.com/RudideC/wiki-go"
    license "Apache-2.0"
    version "0.01"
  
    if Hardware::CPU.intel?
      url "https://github.com/RudideC/wiki-go/releases/download/v0.01/macOS-amd64.zip"
      sha256 "97d57cad3a78aef7ec572abb67617579a860fad75c5347684b2678b1430e891c"
    else
      url "https://github.com/RudideC/wiki-go/releases/download/v0.01/macOS-arm64.zip"
      sha256 "c86d6503b36d3a9a06e9c239669f8706ebb5216c2ad7d9784e52cfe9c71d1fdb"
    end
  
    def install
      bin.install "wiki-go"
    end
  
    test do
      assert_match "Usage", shell_output("#{bin}/wiki-go --help")
    end
  end
  
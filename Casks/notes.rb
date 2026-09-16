cask "notes" do
  version "1.2.0"
  sha256 "70a2753bb7404c6e3b0495e816a450a04f311a01bce744ddac25fa87674bcd4f"

  url "https://github.com/nkzw-tech/notes/releases/download/v#{version}/Notes-darwin-arm64-#{version}.zip"
  name "Notes"
  desc "Local-first Markdown notes app"
  homepage "https://github.com/nkzw-tech/notes"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Notes.app"
end

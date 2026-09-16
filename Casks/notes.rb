cask "notes" do
  version "1.2.0"
  sha256 "165ac18459aaf739ab06eb08ab9061b19a55ad70fd00a6e7d567a892b6d216c1"

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

class IdeaNote < Formula
  depends_on "git"
  depends_on "the_silver_searcher"

  desc "A very simple note tool for CLI and VIM"

  VERSION = "0.0.2"

  version VERSION
  homepage "https://github.com/sjmyuan/idea-note"
  url "https://github.com/sjmyuan/idea-note/archive/#{VERSION}.zip"

  bottle :unneeded

  def install
    bin.install "rea-as_darwin_amd64" => "rea-as"
  end

  test do
    system "#{bin}/rea-as", "--version"
  end

end

class IdeaNote < Formula
  depends_on "git" => :optional
  depends_on "the_silver_searcher" => :optional
  desc "A very simple note tool for cli and vim"
  homepage "https://github.com/sjmyuan/idea-note"

  VERSION = "0.0.4"
  version VERSION
  url "https://github.com/sjmyuan/idea-note/archive/#{VERSION}.zip"
  sha256 "16bfb0d864c15aa11bf2057a67244a6f673951d3dad33d2f685cbdf8adaa7446"

  bottle :unneeded

  def install
    (prefix/"plugin").install "plugin/idea.vim"
    bin.install "bin/idea"
  end

  test do
    system "#{bin}/idea", "help"
  end
end

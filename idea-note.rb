class IdeaNote < Formula
  depends_on "git" => :optional
  depends_on "the_silver_searcher" => :optional
  desc "A very simple note tool for cli and vim"
  homepage "https://github.com/sjmyuan/idea-note"

  VERSION = "0.0.5"
  version VERSION
  url "https://github.com/sjmyuan/idea-note/archive/#{VERSION}.zip"
  sha256 "646d40649e1891f5ef407d5b2474c805c6066a77ffad433cc341e0087083fffb"

  bottle :unneeded

  def install
    (prefix/"plugin").install "plugin/idea.vim"
    bin.install "bin/idea"
  end

  test do
    system "#{bin}/idea", "help"
  end
end

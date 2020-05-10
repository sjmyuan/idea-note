class IdeaNote < Formula
  depends_on "git" => :optional
  depends_on "the_silver_searcher" => :optional
  desc "A very simple note tool for cli and vim"
  homepage "https://github.com/sjmyuan/idea-note"

  VERSION = "0.0.4"
  version VERSION
  url "https://github.com/sjmyuan/idea-note/archive/#{VERSION}.zip"
  sha256 "edb44b089bb1f52651970d27faae10df4a8a9e677cc909138f40c0fa947c799c"

  bottle :unneeded

  def install
    (prefix/"plugin").install "plugin/idea.vim"
    bin.install "bin/idea"
  end

  test do
    system "#{bin}/idea", "help"
  end
end

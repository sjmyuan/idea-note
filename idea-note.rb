class IdeaNote < Formula
  depends_on "git" => :optional
  depends_on "the_silver_searcher" => :optional
  desc "A very simple note tool for cli and vim"
  homepage "https://github.com/sjmyuan/idea-note"

  VERSION = "0.0.6"
  version VERSION
  url "https://github.com/sjmyuan/idea-note/archive/#{VERSION}.zip"
  sha256 "b112a1249b8f8479eca018ece1a53dae20eb797f94d6305ce75f8468d9f1dc4a"

  bottle :unneeded

  def install
    (prefix/"plugin").install "plugin/idea.vim"
    bin.install "bin/idea"
  end

  test do
    system "#{bin}/idea", "help"
  end
end

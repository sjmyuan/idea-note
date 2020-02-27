class IdeaNote < Formula
  depends_on "git" => :optional
  depends_on "the_silver_searcher" => :optional
  desc "A very simple note tool for cli and vim"
  homepage "https://github.com/sjmyuan/idea-note"

  VERSION = "0.0.2"
  version VERSION
  url "https://github.com/sjmyuan/idea-note/archive/#{VERSION}.zip"
  sha256 "2be4179802828b8f24fb35c6842b0d08b732412250e2c08bb7860ac1c21bc50d"

  bottle :unneeded

  def install
    (prefix/"plugin").install "plugin/idea.vim"
    bin.install "bin/idea"
  end

  test do
    system "#{bin}/idea", "help"
  end
end

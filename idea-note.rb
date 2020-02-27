# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class IdeaNote < Formula
  depends_on "git"
  depends_on "the_silver_searcher"
  desc "A very simple note tool for cli and vim"
  homepage "https://github.com/sjmyuan/idea-note"

  VERSION = "0.0.2"
  version VERSION
  url "https://github.com/sjmyuan/idea-note/archive/#{VERSION}.zip"
  sha256 "2be4179802828b8f24fb35c6842b0d08b732412250e2c08bb7860ac1c21bc50d"

  # depends_on "cmake" => :build

  bottle :unneeded

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    #system "./configure", "--disable-debug",
                          #"--disable-dependency-tracking",
                          #"--disable-silent-rules",
                          #"--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test idea-note`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "#{bin}/idea-note", "help"
  end
end

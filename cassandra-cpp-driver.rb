class CassandraCppDriver < Formula
  homepage "http://datastax.github.io/cpp-driver/"
  url "https://github.com/datastax/cpp-driver/archive/2.2.2.tar.gz"
  sha1 "5841bd31f1908e299d66dd0f5fb44dab13b9937c"

  head "https://github.com/datastax/cpp-driver.git", :branch => "master"

  depends_on "cmake" => :build
  depends_on "libuv"
  depends_on "openssl"

  def install
    mkdir "build" do
      args = std_cmake_args - %w{-DCMAKE_BUILD_TYPE=None}
      args << "-DCMAKE_INSTALL_LIBDIR=#{lib}"
      args << "-DCMAKE_BUILD_TYPE=Release"
      args << "-DCASS_BUILD_STATIC=ON"
      system "cmake", "..", *args 
      system "make", "install"
    end
  end
end

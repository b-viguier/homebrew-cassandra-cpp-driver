class CassandraCppDriver < Formula
  homepage "http://datastax.github.io/cpp-driver/"
  url "https://github.com/datastax/cpp-driver/archive/2.2.2.tar.gz"
  sha1 "b4bb435129bab533612fa2caf194555fa943f925"

  head "https://github.com/datastax/cpp-driver.git", :branch => "master"

  depends_on "cmake" => :build
  depends_on "libuv"

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

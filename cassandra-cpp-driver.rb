class CassandraCppDriver < Formula
  homepage "http://datastax.github.io/cpp-driver/"
  url "https://github.com/datastax/cpp-driver/archive/2.4.2.tar.gz"
  sha256 "8558f9cdb98764542202d2c8bccc0a9230f689247a445b828833c5cf8957232f"

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

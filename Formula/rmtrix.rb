class Rmtrix < Formula
  desc "CLI tool for searching and removing files"
  homepage "https://github.com/MeetTak/rmtrix"
  url "https://github.com/MeetTak/rmtrix/releases/download/v0.1/rmtrix-shadow-0.1.zip"
  version "0.1"
  sha256 "9a67d38821e6d1acb96435a684941bd2630b55eecd6eaa0379a4f2212aaf48e5"

  depends_on "openjdk@21"

  def install
    # Install the JAR file
    libexec.install "lib/rmtrix-#{version}-all.jar"
    
    # Create wrapper script
    (bin/"rmtrix").write <<~EOS
      #!/bin/bash
      exec "#{Formula["openjdk@21"].opt_bin}/java" -jar "#{libexec}/rmtrix-#{version}-all.jar" "$@"
    EOS
  end

  test do
    system "#{bin}/rmtrix", "--help"
  end
end

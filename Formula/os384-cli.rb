# Formula/os384-cli.rb
class Os384Cli < Formula
    desc "os384 command line utilities"
    homepage "https://384.co/"
    version "0.1.9"
    url "https://github.com/384co/384-cli-tools/archive/refs/tags/0.1.9.tar.gz"
    sha256 "3fceaf09d0339df7ca78956df4265d0b0e4623dbf35881ab5173233b6fa955bd"
    license "GPL-3.0-only"
  
    depends_on "deno"
  
    def install
      # Directly install executable .ts scripts into bin
      bin.install Dir["src/*.ts"]
    
      # Ensure scripts have executable permissions
      chmod 0755, Dir["#{bin}/*.ts"]

      # Also install the convenience script, which doesn't have a suffix
      bin.install "src/384"
      chmod 0755, "#{bin}/384"
    end

    #test do
    #  # Replace 'script1' and the expected output as per your script's functionality
    #  output = shell_output("#{bin}/script1 --version")
    #  assert_match "0.1.9", output
    #end
  end
  

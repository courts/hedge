require 'bacon'
require 'polyglot'
require 'treetop'

require_relative File.join('..', 'lib', 'httpparser')

describe HTTPParser do

  before do
    @parser = HTTPParser.new
  end

  it "should parse an HTTP GET request" do
    res = @parser.parse(File.open('http_get.txt').read())

    if !res
      puts
      puts @parser.failure_reason
      exit
    end

    res.content.should == {
      :verb    => "GET",
      :url     => "/",
      :version => "HTTP/1.1",
      :headers => {
        "Host"            => "http://www.example.org",
        "User-Agent"      => "Mozilla/5.0 (X11; Linux i686; rv:11.0) Gecko/20100101 Firefox/11.0",
        "Accept"          => "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
        "Accept-Language" => "en-us,en;q=0.5",
        "Accept-Encoding" => "gzip, deflate",
        "Connection"      => "keep-alive"
      }
    }
  end

  #it "should parse an HTTP POST request" do
  #  res = @parser.parse(File.open('http_post.txt').read())
  #end

end

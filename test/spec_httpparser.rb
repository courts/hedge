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
  end

  it "should parse an HTTP POST request" do
    res = @parser.parse(File.open('http_post.txt').read())
  end

end

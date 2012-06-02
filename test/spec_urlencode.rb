require 'bacon'
require 'polyglot'
require 'treetop'

require 'hedge/urlencode.tt'

describe UrlEncodeParser do

  before do
    @parser = UrlEncodeParser.new
  end

  it "should parse url-encoded parameter data" do
    data = "param1=1&param2=2&param3=3&param1=4"
    @parser.parse(data).content.should == {
      'param1' => ['1', '4'],
      'param2' => ['2'],
      'param3' => ['3']
    }
  end
end

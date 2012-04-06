# Autogenerated from a Treetop grammar. Edits may be lost.


# Simple and incomplete HTTP parser.
#
# This software is licensed under the Creative
# Commons CC0 1.0 Universal License.
# To view a copy of this license, visit
# http://creativecommons.org/publicdomain/zero/1.0/legalcode
#
# @author Patrick Hof

module HTTP
  include Treetop::Runtime

  def root
    @root ||= :request
  end

  module Request0
    def delimiter
      elements[0]
    end

    def body
      elements[1]
    end
  end

  module Request1
    def req
      elements[0]
    end

    def delimiter
      elements[1]
    end

    def headers
      elements[2]
    end

  end

  module Request2
    def content
      res = elements[0].content
      res[:headers] = elements[2].content
      return res
    end
  end

  def _nt_request
    start_index = index
    if node_cache[:request].has_key?(index)
      cached = node_cache[:request][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    r1 = _nt_req
    s0 << r1
    if r1
      r2 = _nt_delimiter
      s0 << r2
      if r2
        r3 = _nt_headers
        s0 << r3
        if r3
          i4 = index
          i5, s5 = index, []
          r6 = _nt_delimiter
          s5 << r6
          if r6
            r7 = _nt_body
            s5 << r7
          end
          if s5.last
            r5 = instantiate_node(SyntaxNode,input, i5...index, s5)
            r5.extend(Request0)
          else
            @index = i5
            r5 = nil
          end
          if r5
            r4 = r5
          else
            r8 = _nt_delimiter
            if r8
              r4 = r8
            else
              @index = i4
              r4 = nil
            end
          end
          s0 << r4
        end
      end
    end
    if s0.last
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(Request1)
      r0.extend(Request2)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:request][start_index] = r0

    r0
  end

  module Req0
    def verb
      elements[0]
    end

    def space1
      elements[1]
    end

    def url
      elements[2]
    end

    def space2
      elements[3]
    end

    def version
      elements[4]
    end
  end

  module Req1
    def content
      req = {
        :verb    => elements[0].text_value,
        :url     => elements[2].text_value,
        :version => elements[4].text_value
      }
    end
  end

  def _nt_req
    start_index = index
    if node_cache[:req].has_key?(index)
      cached = node_cache[:req][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    r1 = _nt_verb
    s0 << r1
    if r1
      r2 = _nt_space
      s0 << r2
      if r2
        r3 = _nt_url
        s0 << r3
        if r3
          r4 = _nt_space
          s0 << r4
          if r4
            r5 = _nt_version
            s0 << r5
          end
        end
      end
    end
    if s0.last
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(Req0)
      r0.extend(Req1)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:req][start_index] = r0

    r0
  end

  def _nt_verb
    start_index = index
    if node_cache[:verb].has_key?(index)
      cached = node_cache[:verb][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0 = index
    if has_terminal?('GET', false, index)
      r1 = instantiate_node(SyntaxNode,input, index...(index + 3))
      @index += 3
    else
      terminal_parse_failure('GET')
      r1 = nil
    end
    if r1
      r0 = r1
    else
      if has_terminal?('POST', false, index)
        r2 = instantiate_node(SyntaxNode,input, index...(index + 4))
        @index += 4
      else
        terminal_parse_failure('POST')
        r2 = nil
      end
      if r2
        r0 = r2
      else
        if has_terminal?('PUT', false, index)
          r3 = instantiate_node(SyntaxNode,input, index...(index + 3))
          @index += 3
        else
          terminal_parse_failure('PUT')
          r3 = nil
        end
        if r3
          r0 = r3
        else
          if has_terminal?('DELETE', false, index)
            r4 = instantiate_node(SyntaxNode,input, index...(index + 6))
            @index += 6
          else
            terminal_parse_failure('DELETE')
            r4 = nil
          end
          if r4
            r0 = r4
          else
            if has_terminal?('HEAD', false, index)
              r5 = instantiate_node(SyntaxNode,input, index...(index + 4))
              @index += 4
            else
              terminal_parse_failure('HEAD')
              r5 = nil
            end
            if r5
              r0 = r5
            else
              @index = i0
              r0 = nil
            end
          end
        end
      end
    end

    node_cache[:verb][start_index] = r0

    r0
  end

  def _nt_url
    start_index = index
    if node_cache[:url].has_key?(index)
      cached = node_cache[:url][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    if has_terminal?('\G[a-zA-Z0-9/%:.]', true, index)
      r0 = instantiate_node(SyntaxNode,input, index...(index + 1))
      @index += 1
    else
      r0 = nil
    end

    node_cache[:url][start_index] = r0

    r0
  end

  def _nt_version
    start_index = index
    if node_cache[:version].has_key?(index)
      cached = node_cache[:version][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0 = index
    if has_terminal?('HTTP/1.0', false, index)
      r1 = instantiate_node(SyntaxNode,input, index...(index + 8))
      @index += 8
    else
      terminal_parse_failure('HTTP/1.0')
      r1 = nil
    end
    if r1
      r0 = r1
    else
      if has_terminal?('HTTP/1.1', false, index)
        r2 = instantiate_node(SyntaxNode,input, index...(index + 8))
        @index += 8
      else
        terminal_parse_failure('HTTP/1.1')
        r2 = nil
      end
      if r2
        r0 = r2
      else
        @index = i0
        r0 = nil
      end
    end

    node_cache[:version][start_index] = r0

    r0
  end

  module Headers0
    def content
      h = {}
      elements.each do |el|
        elc = el.content
        h[elc[0]] = elc[1]
      end
      h
    end
  end

  def _nt_headers
    start_index = index
    if node_cache[:headers].has_key?(index)
      cached = node_cache[:headers][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    s0, i0 = [], index
    loop do
      r1 = _nt_header
      if r1
        s0 << r1
      else
        break
      end
    end
    r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
    r0.extend(Headers0)

    node_cache[:headers][start_index] = r0

    r0
  end

  module Header0
    def h_key
      elements[0]
    end

    def space
      elements[2]
    end

    def h_val
      elements[3]
    end

    def delimiter
      elements[4]
    end
  end

  module Header1
    def content
      [elements[0].text_value, elements[3].text_value]
    end
  end

  def _nt_header
    start_index = index
    if node_cache[:header].has_key?(index)
      cached = node_cache[:header][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    r1 = _nt_h_key
    s0 << r1
    if r1
      if has_terminal?(':', false, index)
        r2 = instantiate_node(SyntaxNode,input, index...(index + 1))
        @index += 1
      else
        terminal_parse_failure(':')
        r2 = nil
      end
      s0 << r2
      if r2
        r3 = _nt_space
        s0 << r3
        if r3
          r4 = _nt_h_val
          s0 << r4
          if r4
            r5 = _nt_delimiter
            s0 << r5
          end
        end
      end
    end
    if s0.last
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(Header0)
      r0.extend(Header1)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:header][start_index] = r0

    r0
  end

  def _nt_h_key
    start_index = index
    if node_cache[:h_key].has_key?(index)
      cached = node_cache[:h_key][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    s0, i0 = [], index
    loop do
      if has_terminal?('\G[a-zA-Z0-9-]', true, index)
        r1 = true
        @index += 1
      else
        r1 = nil
      end
      if r1
        s0 << r1
      else
        break
      end
    end
    if s0.empty?
      @index = i0
      r0 = nil
    else
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
    end

    node_cache[:h_key][start_index] = r0

    r0
  end

  module HVal0
  end

  def _nt_h_val
    start_index = index
    if node_cache[:h_val].has_key?(index)
      cached = node_cache[:h_val][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    s0, i0 = [], index
    loop do
      i1, s1 = index, []
      i2 = index
      if has_terminal?("\r", false, index)
        r3 = instantiate_node(SyntaxNode,input, index...(index + 1))
        @index += 1
      else
        terminal_parse_failure("\r")
        r3 = nil
      end
      if r3
        r2 = nil
      else
        @index = i2
        r2 = instantiate_node(SyntaxNode,input, index...index)
      end
      s1 << r2
      if r2
        i4 = index
        if has_terminal?("\n", false, index)
          r5 = instantiate_node(SyntaxNode,input, index...(index + 1))
          @index += 1
        else
          terminal_parse_failure("\n")
          r5 = nil
        end
        if r5
          r4 = nil
        else
          @index = i4
          r4 = instantiate_node(SyntaxNode,input, index...index)
        end
        s1 << r4
        if r4
          if index < input_length
            r6 = instantiate_node(SyntaxNode,input, index...(index + 1))
            @index += 1
          else
            terminal_parse_failure("any character")
            r6 = nil
          end
          s1 << r6
        end
      end
      if s1.last
        r1 = instantiate_node(SyntaxNode,input, i1...index, s1)
        r1.extend(HVal0)
      else
        @index = i1
        r1 = nil
      end
      if r1
        s0 << r1
      else
        break
      end
    end
    r0 = instantiate_node(SyntaxNode,input, i0...index, s0)

    node_cache[:h_val][start_index] = r0

    r0
  end

  module Body0
    def content
      text_value
    end
  end

  def _nt_body
    start_index = index
    if node_cache[:body].has_key?(index)
      cached = node_cache[:body][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    s0, i0 = [], index
    loop do
      if index < input_length
        r1 = instantiate_node(SyntaxNode,input, index...(index + 1))
        @index += 1
      else
        terminal_parse_failure("any character")
        r1 = nil
      end
      if r1
        s0 << r1
      else
        break
      end
    end
    r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
    r0.extend(Body0)

    node_cache[:body][start_index] = r0

    r0
  end

  def _nt_delimiter
    start_index = index
    if node_cache[:delimiter].has_key?(index)
      cached = node_cache[:delimiter][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0 = index
    if has_terminal?("\n", false, index)
      r1 = instantiate_node(SyntaxNode,input, index...(index + 1))
      @index += 1
    else
      terminal_parse_failure("\n")
      r1 = nil
    end
    if r1
      r0 = r1
    else
      if has_terminal?("\r\n", false, index)
        r2 = instantiate_node(SyntaxNode,input, index...(index + 2))
        @index += 2
      else
        terminal_parse_failure("\r\n")
        r2 = nil
      end
      if r2
        r0 = r2
      else
        @index = i0
        r0 = nil
      end
    end

    node_cache[:delimiter][start_index] = r0

    r0
  end

  module Space0
    def content
      text_value
    end
  end

  def _nt_space
    start_index = index
    if node_cache[:space].has_key?(index)
      cached = node_cache[:space][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    s0, i0 = [], index
    loop do
      if has_terminal?('\G[ \\t]', true, index)
        r1 = true
        @index += 1
      else
        r1 = nil
      end
      if r1
        s0 << r1
      else
        break
      end
    end
    if s0.empty?
      @index = i0
      r0 = nil
    else
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(Space0)
    end

    node_cache[:space][start_index] = r0

    r0
  end

end

class HTTPParser < Treetop::Runtime::CompiledParser
  include HTTP
end


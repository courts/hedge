hedge
=====

Author:      Patrick Hof <courts@offensivethinking.org>  
License:     [CC0 1.0 Universal License](http://creativecommons.org/publicdomain/zero/1.0/legalcode)

Download:    git clone git://github.com/courts/hedge.git  

hedge is a simple PEG parser written in Treetop to parse HTTP requests into a
data structure. It does not however implement the whole HTTP specification, so
it is rather incomplete. It's just a little side project that might evolve into
something serious one day.

Why the name?
-------------
It's tough to find a name for an HTTP parser, because there are already so many
of them. The obvious 'httpparser' just leads to more confusion, so I chose a
name that came to my mind when thinking about trees (because of treetop) and
something with 'h' in it. It also didn't return anything when running 'gem
search -r hedge'.

Examples
--------
```ruby
require 'polyglot'
require 'treetop'
require 'hedge/hedge.tt'

HedgeReqParser.new().parse(http_request)
```

See spec_hedge.rb for more specific examples.

RubyGems
--------

A gemspec file is included, so you can build and install hedge as a gem with:

    gem build hedge.gemspec
    gem install hedge-x.x.x.gem

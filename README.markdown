remparser
=========

Author:      Patrick Hof <courts@offensivethinking.org>  
License:     [CC0 1.0 Universal License](http://creativecommons.org/publicdomain/zero/1.0/legalcode)

Download:    git clone git@github.com:courts/httpparser.git  
YARD docs:   [http://courts.github.com/httpparser](http://courts.github.com/httpparser)

HTTPParser is a simple PEG parser written in Treetop to parse HTTP requests into
a data structure. It does not however implement the whole HTTP specification, so
it is rather incomplete.

Examples
--------

RubyGems
--------

A gemspec file is included, so you can build and install httpparser as a gem with:

    gem build httpparser.gemspec
    gem install httpparser-x.x.x.gem

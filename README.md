[![Gem Version](https://badge.fury.io/rb/name_abbr.svg)](http://badge.fury.io/rb/name_abbr)

name_abbr
=========

A simple gem to take a full name and abbreviate it like "John D."

## installation

`gem install name_abbr`

## usage

```ruby
irb(main):001:0> require 'name_abbr'
=> true
irb(main):002:0> NameAbbr.abbr_name('john', 'doe')
=> "John D."
irb(main):003:0> NameAbbr.abbr_name('john', '')
=> "John"
irb(main):004:0> NameAbbr.abbr_name('john', nil)
=> "John"
irb(main):010:0> NameAbbr.abbr_full_name('John')
=> "John"
irb(main):011:0> NameAbbr.abbr_full_name('john doe')
=> "John D."
irb(main):012:0> NameAbbr.abbr_full_name('john     doe')
=> "John D."
irb(main):012:0> NameAbbr.abbr_full_name('john henry doe')
=> "John D."
```


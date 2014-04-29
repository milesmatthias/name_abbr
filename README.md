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
=> "john d."
irb(main):003:0> NameAbbr.abbr_name('john', '')
=> "john"
irb(main):004:0> NameAbbr.abbr_name('john', nil)
=> "john"
irb(main):010:0> NameAbbr.abbr_full_name('hey')
=> "hey"
irb(main):011:0> NameAbbr.abbr_full_name('john doe')
=> "john d."
irb(main):012:0> NameAbbr.abbr_full_name('john     doe')
=> "john d."
```


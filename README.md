# Cellularity

Determine whether a string is an ICCID, IMEI, or ESN.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cellularity'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cellularity

## Usage

#### Currently, Cellularity can handle ESNs, ICCIDs, and IMEIs.

```ruby
imei = 123456789012345       # It can be a string or a number
esn = '0xabc12345'           # The ESN class can also handle hex.
iccid = 12345678901234567890

## Validate your values:
Cellularity::Esn.new(esn).valid?  # => true
Cellularity::Esn.new(imei).valid? # => false
Cellularity::Iccid.new(iccid).valid? # => true
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

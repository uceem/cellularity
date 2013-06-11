module Cellularity
  class Esn

    attr_accessor :esn

    def initialize(esn = '')
      self.esn = esn.to_s
    end

    def valid?
      return is_valid_decimal? if self.esn.length == 11
      return is_valid_hexadecimal? if [8, 10].include?(self.esn.length)
      false
    end

    def is_valid_decimal?
      self.esn =~ /\d+/ && self.esn.to_i.to_s.length == 11
    end

    def is_valid_hexadecimal?
      return self.esn =~ /0x[\h]+/i if self.esn.length == 10
      self.esn =~ /\h+/i
    end
  end
end
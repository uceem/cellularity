module Cellularity
  class Esn

    attr_accessor :esn

    def initialize(esn = '')
      self.esn = esn.to_s
    end

    def valid?
      return is_valid_decimal? if self.esn.length == 11
      return is_valid_hexadecimal_with_prefix? if self.esn.length == 10
      return is_valid_hexadecimal_without_prefix? if self.esn.length == 8
      false
    end

    def is_valid_decimal?
      self.esn =~ /\d+/
    end

    def is_valid_hexadecimal_with_prefix?
      self.esn =~ /0x[\h]+/i
    end

    def is_valid_hexadecimal_without_prefix?
      self.esn =~ /\h+/i && !self.esn.include?('0x')
    end
  end
end
module Cellularity
  class Imei

    attr_accessor :imei

    def initialize(imei = '')
      self.imei = imei.to_s.gsub(/[^0-9]/, '') # Sometimes formatted as AA-BBBBBB-CCCCCC-D
    end

    def valid?
      [15, 16].include?(self.imei.length) && !!Integer(self.imei)
    rescue ArgumentError, TypeError
      false
    end
  end
end
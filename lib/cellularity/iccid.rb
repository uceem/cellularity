module Cellularity
  class Iccid
    attr_accessor :iccid

    def initialize(iccid = '')
      self.iccid = iccid.to_s
    end

    def valid?
      [19, 20].include?(self.iccid.length) && !!Integer(self.iccid)
    rescue ArgumentError, TypeError
      false
    end
  end
end
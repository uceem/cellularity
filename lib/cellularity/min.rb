module Cellularity
  class Min

    attr_accessor :min

    def initialize(min = '')
      self.min = min.to_s
    end

    def valid?
      self.min.length == 10 && !!Integer(self.min)
    rescue ArgumentError, TypeError
      false
    end
  end
end
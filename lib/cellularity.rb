require "cellularity/version"

require 'cellularity/min'
require 'cellularity/esn'
require 'cellularity/imei'
require 'cellularity/iccid'

module Cellularity
  def self.determine_id_type(id)
    return :esn   if Cellularity::Esn.new(id).valid?
    return :imei  if Cellularity::Imei.new(id).valid?
    return :iccid if Cellularity::Iccid.new(id).valid?
    return :min   if Cellularity::Min.new(id).valid?
  end

  def self.parse_id(id)
    case determine_id_type(id)
    when :esn   then Cellularity::Esn.new(id)
    when :imei  then Cellularity::Imei.new(id)
    when :iccid then Cellularity::Iccid.new(id)
    else nil
    end
  end
end

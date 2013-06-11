require 'spec_helper'

describe Cellularity::Imei do

  let(:invalid_imei) { [:blah, '123-123-123-123-12'] }
  let(:valid_imei)   { ['123456789012345', 1234567890123456, '12-123456-123456-1'] }

  it 'should think that valid imeis are valid' do
    valid_imei.each { |imei| Cellularity::Imei.new(imei).valid?.should be_true }
  end

  it 'should think that invalid imeis are invalid' do
    invalid_imei.each { |imei| Cellularity::Imei.new(imei).valid?.should be_false }
  end
end
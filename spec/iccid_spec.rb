require 'spec_helper'

describe Cellularity::Iccid do

  let(:invalid_iccid) { [97824234, 'ahsndjfksnajwkehdms5'] }
  let(:valid_iccid)   { [12345678901234567890, '1234567890123456789'] }

  it 'should think that valid iccids are valid' do
    valid_iccid.each { |iccid| Cellularity::Iccid.new(iccid).valid?.should be_true }
  end

  it 'should think that invalid iccids are invalid' do
    invalid_iccid.each { |iccid| Cellularity::Iccid.new(iccid).valid?.should be_false }
  end
end
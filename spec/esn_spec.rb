require 'spec_helper'

describe Cellularity::Esn do

  let (:invalid_esn) { ['blah', 12345, :abcdfeghj]  }
  let(:valid_esn)    { [12345678909, '0xabc12345', 'abc12345']   }

  it 'should think that valid esns are, in fact, valid' do
    valid_esn.each { |esn| Cellularity::Esn.new(esn).valid?.should be_true }
  end

  it 'should think that invalid esns are invalid' do
    invalid_esn.each { |esn| Cellularity::Esn.new(esn).valid?.should be_false }
  end
end
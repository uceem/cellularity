require 'spec_helper'

describe Cellularity::Min do

  let(:invalid_min) { ['blah', 1234, :ansdfsdf, 12345678901] }
  let(:valid_min)   { [1234567890, '1234567890'] }

  it 'should think that valid mins are valid' do
    valid_min.each { |min| Cellularity::Min.new(min).valid?.should be_true }
  end

  it 'should think that invalid mins are invalid' do
    invalid_min.each { |min| Cellularity::Min.new(min).valid?.should be_false }
  end
end
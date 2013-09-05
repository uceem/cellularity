require 'spec_helper'

describe Cellularity do

  let(:esn)   { '0xabc12345'         }
  let(:imei)  { '123456789012345'    }
  let(:iccid) { 12345678901234567890 }
  let(:min)   { 1234567890           }
  let(:nada)  { :not_an_id           }

  context 'when an esn' do
    it 'should think it is an esn' do
      Cellularity.determine_id_type(esn).should == :esn
    end

    it 'should return an Esn object' do
      Cellularity.parse_id(esn).is_a?(Cellularity::Esn).should be_true
    end
  end

  context 'when an imei' do
    it 'should think it is an imei' do
      Cellularity.determine_id_type(imei).should == :imei
    end

    it 'should return an Imei object' do
      Cellularity.parse_id(imei).is_a?(Cellularity::Imei).should be_true
    end
  end

  context 'when an iccid' do
    it 'should think it is an iccid' do
      Cellularity.determine_id_type(iccid).should == :iccid
    end

    it 'should return an Iccid object' do
      Cellularity.parse_id(iccid).is_a?(Cellularity::Iccid).should be_true
    end
  end

  context 'when an min' do
    it 'should think it is an min' do
      Cellularity.determine_id_type(min).should == :min
    end

    it 'should return an Min object' do
      Cellularity.parse_id(min).is_a?(Cellularity::Min).should be_true
    end
  end
end
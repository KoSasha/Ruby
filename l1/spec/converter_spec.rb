require './lib/converter'

RSpec.describe Converter do
  describe '.converter' do
    context 'from CELSIUS to FAHRENHEIT' do
      it { expect(Converter.convert(1.0, 'C', 'F')).to eq 33.8 }
    end

    context 'from CELSIUS to KELVIN' do
      it { expect(Converter.convert(1.0, 'C', 'K')).to eq 274.15 }
    end

    context 'from KELVIN to CELSIUS' do
      it { expect(Converter.convert(1.0, 'K', 'C')).to eq(-272.15) }
    end

    context 'from KELVIN to FAHRENHEIT' do
      it { expect(Converter.convert(1.0, 'K', 'F')).to eq(-457.87) }
    end

    context 'from FAHRENHEIT to CELSIUS' do
      it { expect(Converter.convert(1.0, 'F', 'C')).to eq(-17.22) }
    end

    context 'from FAHRENHEIT to KELVIN' do
      it { expect(Converter.convert(1.0, 'F', 'K')).to eq 255.93 }
    end
  end
end

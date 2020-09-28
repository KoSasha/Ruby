require './lib/calculate'

RSpec.describe Calculate do
  describe 'calculate' do
    context 'maximum' do
      it { expect(Calculate.calculate('max', 'lib/payment.csv')).to eq 734.5 }
    end

    context 'minimum' do
      it { expect(Calculate.calculate('min', 'lib/payment.csv')).to eq 161.7 }
    end

    context 'average' do
      it { expect(Calculate.calculate('average', 'lib/payment.csv')).to eq 329.15 }
    end

    context 'dispersion' do
      it { expect(Calculate.calculate('dispersion', 'lib/payment.csv')).to eq 959_710.33 }
    end
  end
end

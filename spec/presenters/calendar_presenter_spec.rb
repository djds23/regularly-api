require 'rails_helper'

describe CalendarPresenter do
  describe '#initialize' do
    it 'creates a new object' do
      expect(described_class.new).to be_kind_of described_class
    end
  end

  describe '#as_json' do
    it { is_expected.to respond_to(:as_json) }
  end
end

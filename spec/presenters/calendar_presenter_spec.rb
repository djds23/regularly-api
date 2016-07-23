require 'rails_helper'

describe CalendarPresenter do
  describe '#initialize' do
    it 'creates a new object' do
      expect(described_class.new).to be_kind_of described_class
    end
  end

  describe '#as_json' do
    let!(:album_due_date) { FactoryGirl.create(:album_due_date) }
    let(:user) { album_due_date.user }

    it 'builds the hash with proper data' do
      response = described_class.new.as_json
      due_date = response[:due_dates].first

      expect(due_date[:id]).to eq album_due_date.id
      expect(due_date[:due_date]).to eq album_due_date.due_date
      expect(due_date[:user][:id]).to eq user.id
    end

    context 'with full data' do
      #let!(:album_due_date_with_data) {
      #  FactoryGirl.build(:album_due_date, :with_album)
      #}
      let!(:album_due_date) { FactoryGirl.create(:album_due_date) }
      let(:user) { album_due_date_with_data.user }
      let(:album) { FactoryGirl.create(:album) }
      let(:artist) { album.artist }
      let(:embeds) { album.album_embeds }

      it 'builds the hash with proper data' do
        byebug
        z=1
        response = described_class.new.as_json
        due_date = response[:due_dates].first

        expect(due_date[:id]).to eq album_due_date_with_data.id
        expect(due_date[:due_date]).to eq album_due_date_with_data.due_date
        expect(due_date[:user][:id]).to eq user.id
        expect(due_date[:album][:id]).to eq album.id
        expect(due_date[:album][:name]).to eq album.name
      end
    end
  end
end

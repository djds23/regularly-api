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
      due_date = response[:dueDates].first

      expect(due_date[:id]).to eq album_due_date.id
      expect(due_date[:dueDate]).to eq album_due_date.due_date
      expect(due_date[:user][:id]).to eq user.id
    end

    context 'with full data' do
      let!(:album_due_date_with_data) {
        FactoryGirl.create(
          :album_due_date,
          :with_album,
          due_date: Time.now + 1.week
        )
      }

      let!(:user) { album_due_date_with_data.user }
      let!(:album) { album_due_date_with_data.album }
      let!(:artist) { album.artist }
      let!(:embeds) { album.album_embeds }

      it 'builds the hash with proper data' do
        response = described_class.new(from: Time.now + 2.weeks).as_json
        due_date = response[:dueDates].first

        expect(due_date[:id]).to eq album_due_date_with_data.id
        expect(due_date[:dueDate]).to eq album_due_date_with_data.due_date
        expect(due_date[:user][:id]).to eq user.id
        expect(due_date[:album][:id]).to eq album.id
        expect(due_date[:album][:name]).to eq album.name
        expect(due_date[:artist][:id]).to eq artist.id
        expect(due_date[:artist][:name]).to eq artist.name
      end
    end
  end
end

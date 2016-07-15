require 'rails_helper'

describe CalendarConstructor do

  describe '#create_due_date' do

    let(:starting_edge) { FactoryGirl.create(:user_edge) }
    let(:user)  { starting_edge.user }
    let(:calendar_contructor) {
      described_class.new(starting_edge: starting_edge) }

    it 'creates album due dates for that user on a monday' do
      album_due_date = calendar_contructor.create_due_date(
        user.id,
        Time.parse('2016-07-14') # Thursday
      )
      expect(album_due_date.due_date).to eq Time.now.monday
    end
  end
end


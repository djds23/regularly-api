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
      expect(album_due_date.due_date).to eq Time.parse('2016-07-11').utc.midnight
      expect(album_due_date.persisted?).to be true
    end
  end

  describe '#next_edge' do

    let!(:starting_edge) { FactoryGirl.create(:user_edge) }
    let!(:last_edge) {
      FactoryGirl.create(:user_edge, edge: starting_edge.edge + 1) }

    let(:user)  { starting_edge.user }
    let(:calendar_contructor) {
      described_class.new(starting_edge: starting_edge) }

    it 'finds the next highest edge' do
      new_edge = calendar_contructor.next_edge(starting_edge)
      expect(new_edge.edge).to be > starting_edge.edge
      expect(new_edge).to eq last_edge
    end

    it 'returns the first edge if its at the last' do
      first_edge = calendar_contructor.next_edge(last_edge)
      expect(first_edge.edge).to be < last_edge.edge
      expect(first_edge).to eq starting_edge
    end
  end

  describe '#process' do

    let!(:starting_edge) { FactoryGirl.create(:user_edge) }
    let!(:last_edge) {
      FactoryGirl.create(:user_edge, edge: starting_edge.edge + 1) }

    let(:user)  { starting_edge.user }
    let(:calendar_contructor) {
      described_class.new(starting_edge: starting_edge) }

    let(:start_date) { Time.parse('2016-05-29').utc }
    let(:end_date) { Time.parse('2016-06-30').utc }

    it 'creates a due date for each different user for each week' do
      expect {
        calendar_contructor.process(start_date: start_date, end_date: end_date)
      }.to change { AlbumDueDate.count }.by 5

      first_due_date = AlbumDueDate.first
      expect(first_due_date.user).to eq starting_edge.user
      expect(first_due_date.due_date.monday?).to be true
      expect(first_due_date.due_date).to eq Time.parse('2016-05-23').utc.midnight

      last_due_date = AlbumDueDate.last
      expect(last_due_date.user).to eq starting_edge.user
      expect(last_due_date.due_date.monday?).to be true
      expect(last_due_date.due_date).to eq Time.parse('2016-06-20').utc.midnight
    end
  end
end


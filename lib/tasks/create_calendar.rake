namespace :calendar do
  task :create => :environment do
    starting_edge_id = ENV['StartingEdge'].to_i
    starting_edge = UserEdge.find starting_edge_id
    calendar_constructor = CalendarConstructor.new starting_edge: starting_edge
    puts 'Begin Process!'
    calendar_constructor.process(
      start_date: 1.month.ago,
      end_date: 1.year.from_now
    )
    puts 'Done!'
  end
end

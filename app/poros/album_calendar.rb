class AlbumCalendar
  attr_accessor :edges
  attr_reader :starting_edge

  def initialize(edges:, starting_edge:)
    @edges = edges
    @edge = starting_edge
  end

  def process(start_date:, end_date:)
    current_week = start_date

    while current_week < end_date
      create_due_date(edge.user, current_week)
      current_week += 1.week
      edge = next_edge(edge)
    end
  end

  def create_due_date(user, due_date, appointable: AlbumDueDate)
    appointable.assign_due_date(user.id, due_date)
  end

  def current_edge(previous_edge)
    edges.first
  end

  def next_edge(current_edge)
    current_edge
  end
end

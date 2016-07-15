# object to create calendar entries in the AlbumDueDate table
class CalendarConstructor
  attr_accessor :edge
  attr_reader :starting_edge

  def initialize(starting_edge:)
    @edge = starting_edge
  end

  def process(start_date:, end_date:)
    current_week = start_date

    while current_week < end_date
      create_due_date(edge.user.id, current_week)
      current_week += 1.week
      next_up = next_edge(edge)
      edge = next_up
    end
  end

  def create_due_date(user_id, due_date, appointable: AlbumDueDate)
    appointable.assign_due_date(
      user_id,
      format_due_date(due_date)
    )
  end

  def next_edge(current_edge, query_class: UserEdge)
    next_highest = higher_edge(current_edge, query_class)
    if next_highest.present?
      next_highest
    else
      first_edge(query_class)
    end
  end

  private

  def higher_edge(current_edge, query_class)
    query_class
      .where('edge > ?', current_edge.edge)
      .order(:edge)
      .first
  end

  def first_edge(query_class)
    query_class.order(:edge).first
  end

  def format_due_date(due_date)
    due_date.utc.midnight.monday
  end
end


class Cell
  def initialize(state, opts)
    @state = state
    @live_neighbours = opts[:live_neighbours]
  end

  def next_state
    # Check if cell is alive or dead
    # and apply conways rules to get the next state
    if @state == :live
      return :dead if @live_neighbours < 2
      return :dead if @live_neighbours > 3
      :live
    elsif @state == :dead
      return :live if @live_neighbours == 3
      :dead
    end
  end
end
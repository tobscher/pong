class Pong < BasicGame
  def initialize(window_name)
    super
    @game = Presenters::Game.new
  end

  def render(container, graphics)
    @game.render(container, graphics)

    graphics.draw_string('Pong (ESC to exit)', 8, container.height - 30)
  end

  # Due to how Java decides which method to call based on its
  # method prototype, it's good practice to fill out all necessary
  # methods even with empty definitions.
  def init(container)
  end

  def update(container, delta)
    # Grab input and exit if escape is pressed
    input = container.get_input
    container.exit if input.is_key_down(Input::KEY_ESCAPE)
  end
end

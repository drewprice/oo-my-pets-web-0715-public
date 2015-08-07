class Fish
  attr_reader :name
  attr_accessor :mood

  def initialize(name)
    @name = name
    @mood = 'nervous'
  end

  def make_happy
    @mood = 'happy'
  end

  def get_nervous
    @mood = 'nervous'
  end
end

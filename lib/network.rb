class Network
  attr_reader :name,
              :shows
  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
    mains = []
    shows.each do |show|
      show.characters.each do |character|
       mains << character if character.salary > 500000
      end
    end
    mains
  end

  def actors_by_show
    by_show = Hash.new
    shows.each do |show|
      actor_names = []
      show.characters.each do |character|
        actor_names << character.actor
      end
      by_show[show] = actor_names
    end
    by_show
  end

  def shows_by_actor
    by_actor = Hash.new
    shows.each do |show|
      actor_names = []
      show.characters.each do |character|
        actor_names << character.actor
          show_names = []
          actor_names.each do |actor|
            show_names << show.name
            by_actor[actor] = show.name
        end
        by_actor
      end
    end
    require "pry"; binding.pry
    # figure out how to add baywatch to knight_rider
  end
end

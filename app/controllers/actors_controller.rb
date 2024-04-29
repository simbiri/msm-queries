class ActorsController < ApplicationController
  def all_actors
    @array_actors = Actor.all
    render({ :template => "actors_templates/actors" })
  end

  def actor_details
    id = params.fetch("actor_id").to_i

    @actor_row = Actor.where({ :id => id })[0]

    @character_rows = Character.where({ :actor_id => id })
    render({ :template => "actors_templates/actor_details" })
  end
end

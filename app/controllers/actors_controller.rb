class ActorsController < ApplicationController
  def all_actors
    @array_actors = Actor.all
    render({ :template => "actors_templates/actors" })
  end

  def actor_details
    render({ :template => "actors_templates/actor_details" })
  end
end

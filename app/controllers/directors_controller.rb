class DirectorsController < ApplicationController
  def all
    @array_directors = Director.all
    render({ :template => "directors_templates/all" })
  end

  def youngest
    youngest = Director.all.order(:dob).reverse_order[0]
    @young_name = youngest.name
    @young_id = youngest.id
    @young_dob = youngest.dob.strftime("%B %d, %Y")
    render({ :template => "directors_templates/youngest" })
  end

  def eldest
    eldest = Director.all.order(:dob)[0]
    @old_name = eldest.name
    @old_id = eldest.id
    @old_dob = eldest.dob.strftime("%B %d, %Y")
    render({ :template => "directors_templates/eldest" })
  end

  def director_details
    id = params.fetch("director_id").to_i
    @director_row = Director.where({ :id => id })[0]

    @director_movies = Movie.where({ :director_id => id })
    render({ :template => "directors_templates/director_details" })
  end
end

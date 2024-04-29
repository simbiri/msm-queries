class MoviesController < ApplicationController
  def all_movies
    @array_movies =  Movie.all
    render({ :template => "movies_templates/movies" })
  end

  def movie_details
    render({ :template => "movies_templates/movie_details" })
  end
end

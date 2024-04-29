class MoviesController < ApplicationController
  def all_movies
    @array_movies = Movie.all
    render({ :template => "movies_templates/movies" })
  end

  def movie_details
    id = params.fetch("movie_id").to_i
    @movie_row = Movie.where({ :id => id })[0]
    render({ :template => "movies_templates/movie_details" })
  end
end

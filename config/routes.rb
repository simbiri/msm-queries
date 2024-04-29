Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get("/directors", { :controller => "directors", :action => "all" })
  get("/directors/youngest", { :controller => "directors", :action => "youngest" })
  get("/directors/eldest", { :controller => "directors", :action => "eldest" })
  get("/movies", { :controller => "movies", :action => "all_movies" })
  get("/movies/movie_id", { :controller => "movies", :action => "movie_details" })
  get("/actors", { :controller => "actors", :action => "all_actors" })
  get("/actors/actor_id", { :controller => "actors", :action => "actor_details" })
end

Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get("/directors", { :controller => "directors", :action => "all" })
  get("/directors/youngest", { :controller => "directors", :action => "youngest" })
  get("/directors/eldest", { :controller => "directors", action => "eldest" })
  get("/movies", { :controller => "movies", :action => "all_movies" })
  get("/actors", { :controller => "actors", :action => "all_actors" })
end

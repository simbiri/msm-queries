class DirectorsController < ApplicationController
  def all
    @array_directors = Director.all
    render({ :template => "directors_templates/all" })
  end

  def youngest
    render({ :template => "directors_templates/youngest" })
  end

  def eldest
    render({ :template => "directors_templates/eldest" })
  end
end

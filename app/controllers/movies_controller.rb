class MoviesController < ApplicationController

  def index
    @list_of_movies = Movie.all

    render({ :template => "movie_templates/index.html.erb" })
  end

  def movie_details
    @movie_id = params.fetch("movie_id")

    @details = Movie.where({ :id => @movie_id }).first

    render({ :template => "movie_templates/details.html.erb" })
  end


end

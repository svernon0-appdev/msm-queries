class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all

    render({ :template => "director_templates/index.html.erb" })
  end

  def wisest
    @eldest = Director.where.not({ :dob => nil }).order({ :dob => :asc }).first

    render({ :template => "director_templates/eldest.html.erb" })
  end

  def restless
    @youngest = Director.where.not({ :dob => nil }).order({ :dob => :desc }).first

    render({ :template => "director_templates/youngest.html.erb" })
  end

  def director_details
    @director_id = params.fetch("director_id")

    @details = Director.where({ :id => @director_id }).first

    render({ :template => "director_templates/details.html.erb" })
  end


end

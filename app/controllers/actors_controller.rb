class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all

    render({ :template => "actor_templates/index.html.erb" })
  end

  def actor_details
    @actor_id = params.fetch("actor_id")

    @details = Actor.where({ :id => @actor_id }).first

    @characters = Character.where({ :actor_id => @actor_id })

    render({ :template => "actor_templates/details.html.erb" })
  end


end

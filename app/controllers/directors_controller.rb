class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all
    render({:template => "director_templates/index.html.erb"})

  end



  def wisest
    @oldest = Director.where.not({:dob => nil}).order({:dob => :asc}).at(0)
    render({:template => "director_templates/eldest.html.erb"})

  end


  def yyy
    @y = Director.where.not({:dob => nil}).order({:dob => :asc}).at(-1)
    render({:template => "director_templates/yongest.html.erb"})

  end

  def director_details

    the_id = params.fetch("an_id")

    @the_director = Director.where({:id => the_id}).at(0)

    @filmography = Movie.where({:director_id => @the_director.id})

    render({:template => "director_templates/show.html.erb"})

  end




  def act
    @list_of_actors = Actor.all
    render({:template => "director_templates/actors.html.erb"})

  end

  def adetail

    the_id = params.fetch("a_id")

    @the_actor = Actor.where({:id => the_id}).at(0)

    @char = Character.where({:actor_id => @the_actor.id})
    render({:template => "director_templates/adetail.html.erb"})

  end

  def mov


    @list_of_movies = Movie.all
    render({:template => "director_templates/movies.html.erb"})

  end

  def mdetail

    the_id = params.fetch("m_id")

    @the_movie = Movie.where({:id => the_id}).at(0)

    render({:template => "director_templates/mdetail.html.erb"})

  end
end

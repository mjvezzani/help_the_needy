class StaticPagesController < ApplicationController
  def index
  end

  def needy_people
  	@needy_people = NeedyPerson.all
  end
end

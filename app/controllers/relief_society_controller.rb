class ReliefSocietyController < ApplicationController
  def index
  	@rs_needy_people = NeedyPerson.where("organization = 'relief society'")
  end
end

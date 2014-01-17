class BishopricController < ApplicationController
  def index
  	@bish_needy_people = NeedyPerson.where("organization = 'bishopric'")
  end
end

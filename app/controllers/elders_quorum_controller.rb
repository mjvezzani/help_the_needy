class EldersQuorumController < ApplicationController
  def index
  	@eq_needy_people = NeedyPerson.where("organization = 'elders quorum'")
  end
end

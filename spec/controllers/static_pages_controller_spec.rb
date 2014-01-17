require 'spec_helper'

describe StaticPagesController do

  describe "GET #needy_people" do
    it "assigns correct information to the @needy_people variable" do
      needy_people = NeedyPerson.all
      get :needy_people
      expect(assigns(:needy_people)).to eq needy_people
    end
  end

end

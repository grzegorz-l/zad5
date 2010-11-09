require 'spec_helper'

describe FirmsController do

  it "should be" do
    get :index
    response.should be_success
  end
 end
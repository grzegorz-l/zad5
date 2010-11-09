require 'spec_helper'

describe Firm do
  before(:each) do
  end


  it "should be valid" do
    @firm1 = Firm.new(:title => "Firma 1")
    @firm1.should be_valid
  end

end

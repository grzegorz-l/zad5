class Firm < ActiveRecord::Base
  has_many :workers, :dependent => :destroy
  validates_presence_of :title
  before_create :fill_description
  
  protected
  def fill_description
    if description == "" then
      self.description  = "Firma " + title
    end
  end
  
end

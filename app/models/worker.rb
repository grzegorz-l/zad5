class Worker < ActiveRecord::Base
  belongs_to :firm
  
  validates_presence_of :name
  validates_presence_of :age
  
end

class AddGenderToWorkers < ActiveRecord::Migration
  def self.up
    add_column :workers, :gender, :string
  end

  def self.down
    remove_column :workers, :gender
  end
end

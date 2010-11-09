class PoprawkaWorkers < ActiveRecord::Migration
  def self.up
    add_column :workers , :name, :string
    add_column :workers , :age, :integer
    remove_column :workers, :title
    remove_column :workers, :description
  end

  def self.down
    remove_column :workers, :name
    remove_column :workers, :title
  end
end

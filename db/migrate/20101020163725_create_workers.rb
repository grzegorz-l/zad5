class CreateWorkers < ActiveRecord::Migration
  def self.up
    create_table :workers do |t|
      t.string :title
      t.text  :description
      t.integer :firm_id
      t.timestamps
    end
  end

  def self.down
    drop_table :workers
  end
end

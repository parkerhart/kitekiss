class CreateRuns < ActiveRecord::Migration
  def change
    create_table :runs do |t|
    	t.integer :miles 
    	t.date :date
    	t.text :comment 
    end
  end
end

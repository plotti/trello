class CreateNextSteps < ActiveRecord::Migration
  def change
    create_table :next_steps do |t|
      t.string :description
      t.string :name
      t.string :owner
      t.datetime :date
      t.string :owner
      t.string :link

      t.timestamps
    end
  end
end

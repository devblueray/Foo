class CreatePortraits < ActiveRecord::Migration
  def change
    create_table :portraits do |t|
      t.string :attachment

      t.timestamps
    end
  end
end

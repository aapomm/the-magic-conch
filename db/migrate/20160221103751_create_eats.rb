class CreateEats < ActiveRecord::Migration
  def change
    create_table :eats do |t|
      t.string :place

      t.string :added_by
      t.string :slack_user_id

      t.timestamps null: false
    end
  end
end

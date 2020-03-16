class CreateWhats < ActiveRecord::Migration[6.0]
  def change
    create_table :whats do |t|
      t.string :user_name
      t.text :body
      t.integer :idea_id

      t.timestamps
    end
  end
end
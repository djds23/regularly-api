class CreateUserEdges < ActiveRecord::Migration[5.0]
  def change
    create_table :user_edges do |t|
      t.belongs_to :user, foreign_key: true
      t.integer :edge

      t.timestamps
    end
  end
end

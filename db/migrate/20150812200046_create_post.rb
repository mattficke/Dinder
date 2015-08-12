class CreatePost < ActiveRecord::Migration
  def change
    create_table :posts do |t|

      t.string :name
      t.text :description

      t.timestamps null: false

      t.references :user, index: true
      t.references :project, index: true

    end
  end
end

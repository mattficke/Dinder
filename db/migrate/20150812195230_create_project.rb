class CreateProject < ActiveRecord::Migration
  def change
    create_table :projects do |t|

      t.string :name

      t.timestamps null: false

      t.references :user, index: true

    end
  end
end

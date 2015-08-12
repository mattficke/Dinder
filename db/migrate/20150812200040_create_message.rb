class CreateMessage < ActiveRecord::Migration
  def change
    create_table :messages do |t|

      t.text :description

      t.timestamps null: false

      t.references :user, index: true
      t.references :post, index: true

    end
  end
end

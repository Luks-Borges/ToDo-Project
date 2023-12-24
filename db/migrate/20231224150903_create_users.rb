class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :country
      t.text :status
      t.string :url_image

      t.timestamps
    end
  end
end

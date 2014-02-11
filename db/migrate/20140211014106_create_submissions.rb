class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.text :link
      t.text :description
      t.references :user, index: true

      t.timestamps
    end
  end
end

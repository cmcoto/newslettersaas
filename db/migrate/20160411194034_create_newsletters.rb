class CreateNewsletters < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end

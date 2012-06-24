class CreateShortcuts < ActiveRecord::Migration
  def change
    create_table :shortcuts do |t|
      t.string :long_url, null: false
      t.string :keyword, null: false
      t.integer :number_of_redirects, default: 0
      t.string :owner, null: false

      t.timestamps
    end
  end
end

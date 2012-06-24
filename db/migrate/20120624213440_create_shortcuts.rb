class CreateShortcuts < ActiveRecord::Migration
  def change
    create_table :shortcuts do |t|
      t.string :long_url
      t.string :keyword
      t.integer :number_of_redirects
      t.string :owner

      t.timestamps
    end
  end
end

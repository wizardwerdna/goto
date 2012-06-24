# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
require 'csv'

filename = Rails.root.join "db/goto_seed.csv"

CSV.foreach(filename, headers: true) do |row|
  puts row.inspect
  Shortcut.create keyword: row[0], owner: row[1], long_url: row[2]
end

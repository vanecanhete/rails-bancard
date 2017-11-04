# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'active_record/fixtures'

ActiveRecord::Fixtures.create_fixtures("#{Rails.root}/test/fixtures", "cars")


Person.destroy_all

Person.create!([
{fist_name: "Vanessa",last_name: "Canhete", age:28, login:"vanecan", pass:"1234"},
{fist_name: "Denis",last_name: "Cardozo", age:28, login:"deniscar", pass:"1234"},
{fist_name: "Abraham",last_name: "Haraoni", age:28, login:"haraoni", pass:"1234"}
])

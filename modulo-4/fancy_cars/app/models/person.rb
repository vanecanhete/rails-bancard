class Person < ActiveRecord::Base
    has_one :personal_info
    has_many :jobs
    has_and_belongs_to_many :hobbies
    has_many :aprox_salaries, through: :jobs, source: :salary_range
end

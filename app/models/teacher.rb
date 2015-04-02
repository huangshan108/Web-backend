class Teacher < ActiveRecord::Base
	belongs_to :snapuser
	has_many :snapclasses
	has_many :students, :through => :snapclasses
end

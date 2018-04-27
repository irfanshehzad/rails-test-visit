class User < ApplicationRecord
	require 'csv'
	validates_presence_of :name
	validates_uniqueness_of :name
	validates_presence_of :date
	validates_presence_of :number
	def self.import(file)
		CSV.foreach(file.path,headers: true) do |row|
			User.create row.to_hash
		end
	end
end

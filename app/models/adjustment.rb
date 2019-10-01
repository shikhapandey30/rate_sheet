class Adjustment < ApplicationRecord
	require 'roo'
	def self.import(path)
    xlsx = Roo::Spreadsheet.open(path)
    xlsx.each_with_index do |row, index|
    	if index != 0
    		# adjustment = Adjustment.new(ltv:)
      # 	adjustment.save
      end	
    end
  end

end

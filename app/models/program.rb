class Program < ApplicationRecord
  
 require 'csv'
 require 'roo-xls'
  
  def self.import(file)
    spreadsheet = Roo::Spreadsheet.open(file, extension: :xls)
    sheet = spreadsheet.sheet("Conforming Fixed Rate")

    @program = Program.new()
    @program.loan_purpose = "Purchase"
    @program.loan_size = sheet.row(5)[0]
    @program.loan_type = sheet.row(7)[1]

    term1 = sheet.row(8)[2]
    term2 = sheet.row(8)[3]
    term3 = sheet.row(8)[4]
    term4 = sheet.row(8)[5]

    ltv1 = sheet.row(122)[8]
    ltv2 = sheet.row(122)[9]
    ltv3 = sheet.row(122)[10]
    ltv4 = sheet.row(122)[11]
    ltv5 = sheet.row(122)[13]
    ltv6 = sheet.row(122)[14]
    ltv7 = sheet.row(122)[15]
    ltv8 = sheet.row(122)[16]
    ltv9 = sheet.row(122)[17]

    base_rate_hash = Hash.new
    adjustment_rate_hash = Hash.new

    sheet.each_with_index do |row, index|
      if index >= 8 && index <= 33
        base_rate_hash[row[1]] = {"#{term1}": row[2].round(3), "#{term2}": row[3].round(3), "#{term3}": row[4].round(3), "#{term4}": row[5].round(3)}
      end

      if index >= 122 && index <= 129
        adjustment_rate_hash[row[5]] = {"#{ltv1}": row[8], "#{ltv2}": row[9], "#{ltv3}": row[10], "#{ltv4}": row[11], "#{ltv5}": row[13], "#{ltv6}": row[14], "#{ltv7}": row[15], "#{ltv8}": row[16], "#{ltv9}": row[17]}
      end

    end
    @program.base_rate = base_rate_hash
    @program.adjustment_rate = adjustment_rate_hash
    @program.save
  end

end
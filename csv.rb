require 'csv'

def parse_csv(file_name)
  data = []
  
  CSV.foreach(file_name, headers: true) { |row| data << row.to_h }
  
  data
end

file_name = 'data.csv'
result = parse_csv(file_name)

puts result

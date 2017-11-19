require 'csv'
customers = CSV.read('customers.csv')

CSV.foreach('customers.csv') do |row|
	puts row.inspect
end

average_money_spent = Array.new
CSV.foreach('customers.csv', headers: :true, converters: :numeric) do |row|
	average_money_spent << row[3] / row[2]
end


customers_array = CSV.read('customers.csv')
customers_array.each do |customer|
	customer << average_money_spent.shift
end

CSV.open('our-new-customers.csv', 'w') do |csv_object|
	customers_array.each do |row_array|
		csv_object << row_array
	end
end  
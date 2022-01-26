class PeopleDollar
	require_relative "date_format"
	def self.arrange_in_format params
		first_name = []
		city = []
		birthdate = []
		params.split("\n").to_a.each do |line|
			line.split(" $ ").to_a.each_with_index do |item, index| 
				if(index == 0)
					city.push(get_city_name(item))
				elsif (index == 1)
					splited_item = item.split('-')
					birthdate.push(DateFormat.format_date(splited_item[2], splited_item[1], splited_item[0]))
				elsif (index == 3)
					first_name.push(item)
				end	
			end
		end
		first_name.shift
		city.shift
		birthdate.shift
		arranged_data = []
		for i in 0 ... first_name.size
			arranged_data.push([first_name[i], city[i], birthdate[i]])
		end
		arranged_data
	end

	# covert city full name by city code
	def self.get_city_name city_code
		if(city_code == "LA")
			"Los Angeles"
		elsif (city_code == "NYC")
			"New York City"
		end
	end
end
class DateFormat
	def self.format_date year, date, month
		new_format = date.to_i.to_s + '/' + month.to_i.to_s + '/' + year.to_i.to_s
	end
end
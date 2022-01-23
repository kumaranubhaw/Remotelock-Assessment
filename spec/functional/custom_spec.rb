require 'spec_helper'

#######################################################
# DO NOT CHANGE THIS FILE - WRITE YOUR OWN SPEC FILES #
#######################################################
RSpec.describe 'App Functional Test' do
  describe 'dollar and percent formats sorted by first_name' do

    let(:date_format) { DateFormat.new }

    it 'matches the date format' do
      dateformat = [DateFormat.format_date('2021', '05', '23')]

      expect(dateformat).to eq [
        '5/23/2021'
      ]
    end

    it 'this returns city name by city code' do 
      city_name = PeopleDollar.get_city_name('LA')

      expect(city_name).to eq "Los Angeles"
    end
  end
end

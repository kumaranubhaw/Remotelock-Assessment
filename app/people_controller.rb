class PeopleController
  require_relative 'people_dollar'
  require_relative 'people_percentage'

  def initialize(params)
    @params = params
  end

  def normalize
    dollar_people = PeopleDollar.arrange_in_format(params[:dollar_format])
    percentage_people = PeoplePercentage.arrange_in_format(params[:percent_format])
    people_detail = percentage_people + dollar_people
    sorted_people = people_detail.sort_by {|i| i.first }
    get_formated_string(sorted_people)
  end

  private

  def get_formated_string(people_detail)
    formated_string = []
    people_detail.each { |arr|
      formated_string.push(arr.join(", "))
    }
    formated_string
  end

  attr_reader :params
end

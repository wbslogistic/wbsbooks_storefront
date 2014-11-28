Spree::Order.class_eval do
  scope :last_year, -> { completed_between(Date.today.beginning_of_year - 1.year, Date.today.end_of_year - 1.year)}
  scope :last_three_months, -> { completed_between(Date.today - 3.months, Date.today + 1.day)}

end

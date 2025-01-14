class Car
  attr_reader :model,
              :monthly_payment,
              :loan_length,
              :make,
              :color
  def initialize(model, monthly_payment, loan_length)
    @model           = model.split(/\W+/).last
    @monthly_payment = monthly_payment
    @loan_length     = loan_length
    @make            = model.split(/\W+/).first
    @color           = nil
  end

  def total_cost
    monthly_payment * loan_length
  end

  def paint!(color)
    @color = color
  end

end
class CheckController < ApplicationController
  def state

        @pay_money = Pay.all

        @pay_sum = 0
        @pay_money.each do |pay_money|
                @pay_sum += pay_money.price
        end

#--------------

        @income_money = Income.all

        @income_sum = 0
        @income_money.each do |income_money|
                @income_sum += income_money.price
        end

  end

end

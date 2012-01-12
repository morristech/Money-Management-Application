class CheckController < ApplicationController
  def state

#--- 支払い額の積算 ---
        @pay_money = Pay.all

        @pay_sum = 0
        @pay_money.each do |pay_money|
                @pay_sum += pay_money.price
        end

#--- 収入額の積算 ---
        @income_money = Income.all

        @income_sum = 0
        @income_money.each do |income_money|
                @income_sum += income_money.price
        end

  end

end

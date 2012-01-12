class CheckController < ApplicationController
  def state
    @user = User.find(session[:user_id])

    #--- 支払い額の積算 ---
    @pay_money = Pay.all

    @pay_sum = 0
    @pay_money.each do |pay_money|
      if @user.name == pay_money.uname
        @pay_sum += pay_money.price
      end
    end

    #--- 収入額の積算 ---
    @income_money = Income.all

    @income_sum = 0
    @income_money.each do |income_money|
      if @user.name == income_money.uname
        @income_sum += income_money.price
      end
    end

  end
end

class CheckController < ApplicationController
  def state
    @user = User.find(session[:user_id])
    @nowpay = Pay.all
    @nowincome = Income.all

    nowtime = Time.now                    #--- get current time ---#
    nowtime_string = nowtime.to_s         #--- convert valiable to string type ---#
    @timetime = nowtime_string.slice(0,8) #--- cut year and month information (e.g. @timetime -> '2011-12-') ---#

    

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

class ChoicesController < ApplicationController
  def start
  end
  def make
    eateries = Eatery.all.shuffle

      @recommend1 = eateries.first
      @recommend2 = eateries.second

      @count = 0

  end

  def choose
    @p = Moreless.new(user_id: params[:prefer][:user_id], more: params[:prefer][:more], less: params[:prefer][:less])
    @p.save

    eateries = Eatery.all.shuffle
    @recommend1 = Eatery.find_by(id: @p.more)
    @recommend2 = eateries.second

    @count = params[:prefer][:count].to_i + 1

    if @count == 5
      @result = params[:prefer][:more]
      render 'result'
    else
      render 'make'
    end
  end

  def result
  end

  def testcase
    @p = Prefer.new(user_id: params[:user_id])
    @p.save
  end
end

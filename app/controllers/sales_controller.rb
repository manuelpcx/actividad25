class SalesController < ApplicationController
  def new
  end

  def create
    @sale = Sale.new(sale_params)
    @sale = @sale.value - @sale.discount
    @sale.save
    
  end
end

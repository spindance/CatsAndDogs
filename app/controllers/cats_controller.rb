class CatsController < ApplicationController
  filter_access_to :all, :attribute_check => true, :load_method => :find_cat

  def show
  end

  private

  def find_cat
    @cat = Cat.new(params[:id].to_i)
  end

end

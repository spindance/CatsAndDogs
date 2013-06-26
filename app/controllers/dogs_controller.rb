class DogsController < ApplicationController
  filter_access_to :all, :attribute_check => true, :context => :dogs, :load_method => :find_dog

  def show
  end

  private

  def find_dog
    @dog = Java::Dog.new(params[:id].to_i)
  end

end

class DogsController < ApplicationController
  java_import com.spindance.jcatsanddogs.services.DogService

  filter_access_to :all, :attribute_check => true, :context => :dogs, :load_method => :find_dog

  def show
  end

  private

  def find_dog
    service = DogService.new
    begin
      @dog = service.dog(params[:id].to_i)
    ensure
      service.close()
    end
  end

end

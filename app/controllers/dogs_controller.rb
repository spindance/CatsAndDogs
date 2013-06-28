class DogsController < ApplicationController
  java_import com.spindance.jcatsanddogs.services.DogService

  filter_access_to :all, :attribute_check => true, :context => :dogs, :load_method => :find_dog

  def show
  end

  def update
    @dog.name = params[:name]
    service = DogService.new
    begin
      if service.update_dog(@dog)
        respond_to do |format|
          format.json do
            render
          end
        end
      else
        respond_to do |format|
          format.json do
            render :status => :unprocessable_entity
          end
        end
      end
    ensure
      service.close()
    end
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

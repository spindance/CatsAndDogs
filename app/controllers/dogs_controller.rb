class DogsController < ApplicationController
  java_import com.spindance.jcatsanddogs.services.DogService

  filter_access_to :all, :attribute_check => true, :context => :dogs, :load_method => :find_dog

  def index
  end

  def show
  end

  def update
    @dog.name = params[:name]
    with_service(DogService) do |s|
      if s.updateDog(@dog)
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
    end
  end

  private

  def find_dog
    with_service(DogService) do |s|
      if params[:id].blank?
        @dogs = s.getDogs()
      else
        @dog = s.getDog(params[:id].to_i)
      end
    end
  end

end

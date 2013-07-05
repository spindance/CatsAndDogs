class CowsController < ApplicationController
  java_import com.spindance.jcatsanddogs.services.CowService

  filter_access_to :all, :attribute_check => true, :context => :cows, :load_method => :find_cow

  def show
  end

  def update
    @cow.name = params[:name]
    @service ||= CowService.new
    if @service.update_cow(@cow)
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

  private

  def find_cow
    @service ||= CowService.new
    @cow = @service.cow(params[:id].to_i)
  end

end

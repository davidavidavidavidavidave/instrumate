class InstrumentsController < ApplicationController

  def index
    @instruments = Instrument.all
    @markers = @instruments.geocoded.map do |instrument|
      {
        lat: instrument.latitude,
        lng: instrument.longitude,
        info_window: render_to_string(partial: "popup", locals: {instrument: instrument})
      }
    end
  end

  def show
    @instrument = Instrument.find(params[:id])
  end

  def new
    @instrument = Instrument.new
  end

  def create
    #@instrument = Instrument.create(params[:name, :description, :price])
    @instrument = Instrument.new(instrument_params)
    @instrument.user = current_user
    if @instrument.save!
      redirect_to instrument_path(@instrument)
    else
      render :new
    end
  end


  #puts "Instrument added: #{Instrument.last.name}"

  #   instrument.user = current_user
  #   if instrument.save
  #     redirect_to instrument_path(instrument)
  #   else
  #     render :new
  #   end
  # end

  private

  def instrument_params
    params.require(:instrument).permit(:name, :description, :price)
  end

end
# db for reference

# #  t.string "name"
#     t.string "type"
#     t.string "genre"
#     t.string "description"
#     t.integer "price"
#     t.string "location" %>

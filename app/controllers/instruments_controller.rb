class InstrumentsController < ApplicationController

  def index
    @instruments = Instrument.all
  end

  def show
    @instrument = Instrument.find(params[:id])
  end

  def new
    @instrument = Instrument.new
  end

  def create
    @instrument = Instrument.create(params[:name, :description, :price])
  end


  puts "Instrument added: #{Instrument.last.name}"

  #   instrument.user = current_user
  #   if instrument.save
  #     redirect_to instrument_path(instrument)
  #   else
  #     render :new
  #   end
  # end

  # private
  # def instrument_params
  #   params.require(:instrument).permit(:name, :type, :genre, :description, :price, :location)
  # end

end
# db for reference

# #  t.string "name"
#     t.string "type"
#     t.string "genre"
#     t.string "description"
#     t.integer "price"
#     t.string "location" %>

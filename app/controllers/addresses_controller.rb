class AddressesController < ApplicationController
  before_action :set_contact
  before_action :set_address, only: [:show, :edit, :update, :destroy]

  # GET /addresses
  def index
  end

  # GET /addresses/1
  def show
  end

  # GET /addresses/new
  def new
    @address = @contact.addresses.build
  end

  # GET /addresses/1/edit
  def edit
  end

  # POST /addresses
  def create
    @address = @contact.addresses.build(address_params)

    if @address.save
      redirect_to contact_addresses_path(@contact, @address), notice: 'Address was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /addresses/1
  def update
    if @address.update(address_params)
      redirect_to contact_addresses_path(@contact, @address), notice: 'Address was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /addresses/1
  def destroy
    @address.destroy
    redirect_to contact_addresses_path(@contact), notice: 'Address was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_address
      @address = Address.find(params[:id])
    end

    def set_contact
      @contact = Contact.find(params[:contact_id])
    end

    # Only allow a trusted parameter "white list" through.
    def address_params
      params.require(:address).permit(:contact_id, :country_id, :state_id, :street, :zipcode, :address_type, :is_default)
    end
end

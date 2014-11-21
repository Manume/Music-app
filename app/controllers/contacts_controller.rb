class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  # GET /contacts
  # GET /contacts.json
  def index
    redirect_to new_contact_path
  end

  # GET /contacts/1
  # GET /contacts/1.json
  def show
    redirect_to new_contact_path
  end

  # GET /contacts/new
  def new
    @posts = Post.all
    @contact = Contact.new
  end

  # GET /contacts/1/edit
  

  # POST /contacts
  # POST /contacts.json
  def create
    @posts = Post.all
    @contact = Contact.new(contact_params)
 
    respond_to do |format|
      if @contact.save
        # Tell the UserMailer to send a welcome email after save
        #ContactMailer.welcome_email(@contact).deliver
 
        format.html { redirect_to(new_contact_path, notice: 'Your Message was successfully Send.') }
        format.json { render json: @contact, status: :created, location: @contact }
      else
        format.html { render action: 'new' }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
 
  end 
  # PATCH/PUT /contacts/1
  # PATCH/PUT /contacts/1.json
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:contact).permit(:name, :email, :message)
    end
end

class ContactsController < ApplicationController
  def new 
    @contact = Contact.new
  end
  
  def create  
    @contact =Contact.new(contact_params)
    
    if @contact.save
      redirect_to_new_contact_path, notice: "Messsage Sent." 
    else
      redirect_to_new_contact_path, notice: "Error Occured"      
  end
    
    private
      def contact_params
        params.require(:contact).permit(:name, :email, :comments)
      end
end
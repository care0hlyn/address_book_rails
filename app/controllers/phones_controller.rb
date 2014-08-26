class PhonesController < ApplicationController
  def new
    contact = Contact.find(params[:contact_id])
    @phone = contact.phones.new
    render('phones/new.html.erb')
  end

  def create
     @phone = Phone.new(params[:phone])
     if @phone.save
       render('phones/success.html.erb')
     else
       render('phones/new.html.erb')
     end
   end

  def destroy
    @phone = Phone.find(params[:phone_id])
    @phone.destroy
    render('phones/destroy.html.erb')
  end

  def edit
    @contact = Contact.find(params[:contact_id])
    @phone = Phone.find(params[:phone_id])
    render('phones/edit.html.erb')
  end

  def update
    @phone = Phone.find(params[:phone_id])
    if @phone.update(params[:phone])
      render('phones/success.html.erb')
    else
      render('phones/edit.html.erb')
    end
  end
end

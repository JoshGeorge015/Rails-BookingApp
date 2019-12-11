class HomeController < ApplicationController
  def index
  end

  def contact
    # name = params[:name]
    # email = params[:email]
    # telephone = params[:telephone]
    # message = params[:message]
    # if email.blank?
    #   # flash[:alert] = I18n.t('home.request_contact.no_email')
    #   flash[:alert] = t('home.request_contact.no_email')
    # else# Send an email
    #   ContactMailer.contact_email(email, name, telephone, message).deliver_now
    #   flash[:notice] = t('home.request_contact.email_sent')
    #   # flash[:notice] = I18n.t('home.request_contact.email_sent')
    # end
    # redirect_to root_path

  end


  def request_contact
    name = params[:name]
    email = params[:email]
    telephone = params[:telephone]
    message = params[:message]
    if email.blank?
      # flash[:alert] = I18n.t('home.request_contact.no_email')
      flash[:alert] = t('home.request_contact.no_email')
    else# Send an email
      ContactMailer.contact_email(email, name, telephone, message).deliver_now!
      flash[:notice] = t('home.request_contact.email_sent')
      # flash[:notice] = I18n.t('home.request_contact.email_sent')
    end
    redirect_to root_path
    end
end


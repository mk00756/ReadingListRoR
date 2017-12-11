# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview
  def contact_email
      ContactMailer.contact_email("mk00756@me.com","Mateusz Kulinski", "078901234567", @message = "Testing")
  end
end

require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  
  test "should return contact email" do
    mail = ContactMailer.contact_email("mk00756@me.com", "Mateusz Kulinski",
    "07890123456", @message = "Testing")
    
    assert_equal ['info@readlist.com'], mail.to
    assert_equal ['info@readlist.com'], mail.from
  end
end

require 'net/smtp'

class Quiz < ActiveRecord::Base
  has_many :questions
  validates :name, presence: true, length: { maximum:50 }

  def self.email_results(message, email)
    @message = message
    @email = email
    smpt = Net::SMTP.new 'smtp.gmail.com', 587
    smpt.enable_starttls
    smpt.start('gmail.com', 'qwyzcode', 'vxqc7Vz65b7h', :login)
    smpt.send_message "#{@message}", 'qwyzcode@gmail.com', @email
    smpt.finish
  end
end

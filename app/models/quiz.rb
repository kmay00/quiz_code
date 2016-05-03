require 'net/smtp'

class Quiz < ActiveRecord::Base
  has_many :questions
  validates :name, presence: true, length: { maximum:50 }

  def email_results
    message = "testing an email"
    smpt = Net::SMTP.new 'smtp.gmail.com', 587
    smpt.enable_starttls
    smpt.start('gmail.com', 'qwyzcode', 'vxqc7Vz65b7h', :login)
    smpt.send_message message, 'qwyzcode@gmail.com', 'kmay00@gmail.com'
    smpt.finish
  end
end

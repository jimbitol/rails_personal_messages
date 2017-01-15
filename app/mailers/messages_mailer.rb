class MessagesMailer < ApplicationMailer

  
  def message_created(message)

    @message = message

    attachments['resume.pdf'] = File.read("#{Rails.root}/public/MCABRERA_RESUME.pdf") if @message.copied == 1
    @bcc = @message.from if @message.copied == "1"

    mail to: "maxcabrera815@gmail.com", subject: @message.subject, bcc: @bcc
  end
end

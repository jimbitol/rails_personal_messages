class MessagesMailer < ApplicationMailer

  
  def message_created(message)

    @message = message

    attachments['resume.pdf'] = File.read("#{Rails.root}/public/MCABRERA_RESUME.pdf") if @message.copied
    cc = @message.from if @message.copied

    mail to: "maxcabrera815@gmail.com", subject: @message.subject, cc: cc
  end
end

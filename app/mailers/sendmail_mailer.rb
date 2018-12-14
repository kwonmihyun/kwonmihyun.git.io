class SendmailMailer < ApplicationMailer
    
    def email_send title, content, email
        mail from: email,
        to: 'kwonmh2929@likelion.org',
        subject: title,
        body: content
    end
end

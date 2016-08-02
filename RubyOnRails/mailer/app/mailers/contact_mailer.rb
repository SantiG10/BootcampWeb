class ContactMailer < ApplicationMailer

  def contact(email, subject, message, filename)
    @email = email
    @subject = subject
    @filename = filename
    attachaments['attachament.png'] = File.read
  end

  def recibir(email)
    mail(to: email, subject: "Tu mensaje fue enviado")
  end
end

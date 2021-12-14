class AssignMailer < ApplicationMailer
  default from: 'from@example.com'

  def assign_mail(email, password)
    @email = email
    @password = password
    mail to: @email, subject: I18n.t('views.messages.complete_registration')
  end
  
  def del_agenda_mail(user)
    @user = user
    mail to: @user.email, subject: "アジェンダが削除されました"
  end
end
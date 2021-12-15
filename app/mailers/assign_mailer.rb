class AssignMailer < ApplicationMailer
  default from: 'from@example.com'
  default from: 'rikkuhose@gmail.com'

  def assign_mail(email, password)
    @email = email
    @password = password
    mail to: @email, subject: I18n.t('views.messages.complete_registration')
  end
  
  def appoint_mail(assign)
    @assign = assign
    @team_info = Team.where(owner_id:@assign.id)
    mail to: @assign.email, subject: "あなたはチームのリーダーになりました"
  end
  
  def del_agenda_mail(user)
    @user = user
    mail to: @user.email, subject: "アジェンダが削除されました"
  end
end
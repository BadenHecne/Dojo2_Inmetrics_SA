Dado(/^que esteja logado no site Suite CRM$/) do
 @access.load
 @access.login_home
end

Quando(/^estiver na home acesso a tela de create task$/) do
  @access.create_task
end

Quando(/^eu crio uma nova task$/) do
  @access.register_task
end

Entao(/^vejo a task criada com sucesso$/) do
  @access.validation_create_task
end 
#--------------------------------------------------------------#

Quando(/^eu estiver na pagina de edit task$/) do
  @access.edit_task
end

Quando(/^eu editar a task desejada$/) do
  @access.edit_task_baden
end

Entao(/^vejo a task editada com sucesso$/) do
  @access.validation_edit_task
end
#--------------------------------------------------------------#

Quando(/^eu estiver na homepage do site$/) do
  @access.edit_task
end

Quando(/^eu navegar ate a pagina de tasks$/) do
  @access.link_edit
end

Entao(/^eu excluo a task desejada com sucesso$/) do
  @access.click_button_delete
  @access.validation_delete_task
end
#--------------------------------------------------------------#
#language: pt
#utf-8

@all_scenario
Funcionalidade: Create task, Edit task and Delete task
Eu como usuario do site Suite CRM
Quero logar no site
Para criar, editar e excluir uma tarefa

Contexto: Logado no site Suite CRM
	Dado que esteja logado no site Suite CRM 

@create_task
Cenario: Create task
	Quando estiver na home acesso a tela de create task 
	Quando eu crio uma nova task
	Entao vejo a task criada com sucesso

@edit_task
Cenario: Edit task
	Quando eu estiver na pagina de edit task
	E eu editar a task desejada
	Entao vejo a task editada com sucesso

@delete_task
Cenario: Delete task
	Quando eu estiver na homepage do site
	E eu navegar ate a pagina de tasks
	Entao eu excluo a task desejada com sucesso
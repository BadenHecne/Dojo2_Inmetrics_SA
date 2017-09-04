class LoginPage < SitePrism::Page

	set_url   "https://demo.suiteondemand.com"
	element    :username_field,   "#user_name"
	element    :password_field,   "#user_password"
	element    :log_in_button,    "#bigbutton"
	element    :menu_main,        "#quickcreatetop"
	element    :subject_field,    "#name"
	element    :status_option,    "#status"
	element    :parent_type,      "#parent_type"
	element    :start_date,       "#date_start_date"
	element    :parent_name,      "#parent_name"
	element    :contact_name,     "#contact_name"
   	element    :recent_link,      "#grouptab_3" 
   	element    :xablau,           'li[class="dropdown"]'

#---------------------------------------------------------#

	def login_home
	 username_field.set('will')
	 password_field.set('will')
	 log_in_button.click
	 assert_text('SUITECRM DASHBOARD')
	end

	def create_task
	 wait_until_menu_main_visible
	 menu_main.click
	 click_link('Create Task')
	end
    
    def register_task
	 subject_field.set('Baden Hecne') 
	 status_option.select('In Progress')
	 parent_type.select('Task')
	 start_date.set('10/02/1988')
	 parent_name.set('Analyst')
	 contact_name.set('Hecne')
	 click_button('SAVE', :match => :first)
	end

	def validation_create_task
	 assert_text('Baden Hecne')
	end

	def edit_task
	 wait_until_recent_link_visible
	 recent_link.click
	 click_link('Tasks', :match => :first)
     assert_text('Tasks')
     click_link('Baden Hecne', :match => :first)
     xablau.click
	end

	def edit_task_baden
	 click_button('edit_button')	
	 status_option.select('Pending Input')
	 start_date.set('10/07/1988')
	 click_button('SAVE', :match => :first)
	end

	def validation_edit_task
	 assert_text('Baden Hecne')
	end

    def link_edit
	 assert_text('Tasks')
     click_link('Baden Hecne', :match => :first)
	 xablau.click
	end

	def click_button_delete
	 click_button('delete_button')
	 #click_link('OK')
	 page.driver.browser.switch_to.alert.accept
	end

	def validation_delete_task	
	 assert_no_text('Baden Hecne')
	 assert_text('TASKS')
	end
end


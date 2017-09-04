#click_link('Create Task')
#click_button('SAVE', :match => :first)
#assert_text('Baden Hecne')
#click_link('Tasks', :match => :first)
#assert_text('Tasks')
#click_link('Baden Hecne', :match => :first)
#@acessar.link_edit
#click_button('edit_button')
#click_button('SAVE', :match => :first)
#assert_text('Baden Hecne')
#click_link('Tasks', :match => :first)
#assert_text('Tasks')
#click_link('Baden Hecne', :match => :first)
#click_button('delete_button')

#----------------------------------------------------------------------------------------#

#element    :moduleTab_Tasks,  "#grouptab_3"
#element    :edit_link,          'td[class="inlineEdit"]'  
#element    :save_button,       "#save_and_continue"  4772ea30-09c1-ffae-2eab-59aa1fc61b61
#element    :tab_actions,      "#tab-actions"
#element    :searchbutton,     "#searchbutton"
#element    :query_string,     "#query_string"
#element    :menu_edit,        "#tab-actions"

#----------------------------------------------------------------------------------------#
#wait_until_moduleTab_Tasks_visible
#moduleTab_Tasks.select('Tasks')
#sleep 15
#tab_actions.select('Edit')
#wait_until_searchbutton_visible
#sleep 5
#searchbutton.click
#wait_until_query_string_visible  inlineEdit
#query_string.set('Baden Hecne')

#----------------------------------------------------------------------------------------#

#tab_actions.select('Edit')
#edit_link.click

#----------------------------------------------------------------------------------------#

#save_button.click
#menu_edit.click
#click_link('OK')

#----------------------------------------------------------------------------------------#

https://github.com/BadenHecne/Dojo2_Inmetrics_SA.git


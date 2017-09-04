Before do 
	@access = LoginPage.new
end

    After do |scenario|
      Dir.mkdir('evidence') unless Dir.exist?('evidence')
      sufix = ('error' if scenario.failed?) || 'success'
      name = sufix + '-' + (scenario.name.tr('', '_').downcase)
      time = Time.now.strftime('%Y_%m_%d_%H_%M_%S')
      path =('evidence/' + time + '.png')
      page.save_screenshot(path)
      embed(path, 'image/png', name)
end  

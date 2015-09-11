require 'middleman-gh-pages'

desc "deploy"
task :deploy => [:build] do
	Dir.mkdir('deploy')
	version = "test"
	Dir.chdir('deploy') do
		`git init`
		`git remote add origin git@github.com:DanielTomlinson/danieltomlinson.github.io`
		`git fetch origin master`
		`git pull origin master`
		`cp -r ../build/* .`
		`git add -A`
		`git commit -am "Updated to: #{version}"`
		`git push origin master`
	end
end
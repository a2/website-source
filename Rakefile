
desc "Compile the site to the build/ directory"
task :build do
  sh "bundle exec middleman build"
end

desc "deploy"
task :deploy => [:build] do
	Dir.mkdir('deploy')
	version = `git log --pretty=format:'%h' -n 1`
	Dir.chdir('deploy') do
		`git init`
		`git remote add origin git@github.com:DanToml/dantoml.github.io`
		`git fetch origin master`
		`git pull origin master`
		`rm -rf *`
		`cp -r ../build/* .`
		`git add -A`
		`git commit -am "Updated to: #{version}"`
		`git push origin master`
	end
end

desc 'Runs the web server locally and watches for changes'
task :run do
 sh "bundle exec middleman server --port 4567"
end

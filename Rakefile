$:.unshift File.dirname(__FILE__) + 'lib'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new
task :default => :spec

desc "Pruebas unitarias de la clase Fraccion"
task :p do
	sh "rspec -I. spec/racional_spec.rb"
end

desc "Pruebas unitarias de la clase Fraccion"
task :doc do
	sh "rspec -I. spec/racional_spec.rb --format documentation"
end

desc "Pruebas unitarias de la clase Fraccion"
task :html do
	sh "rspec -I. spec/racional_spec.rb --format html"
end


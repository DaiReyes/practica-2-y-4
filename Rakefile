require 'rake'
require 'rake/testtask'

task :default => [:test_units]

desc "Hace los test del perimetro"
Rake::TestTask.new("test_units") do |t|
    t.libs << "test"
    t.test_files = FileList['C:\Users\Vegeta\RUBY\tescircum.rb']
    t.verbose = true
end
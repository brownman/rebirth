
# The version number for Rebirth.
REBIRTH_VERSION = [0,0,0]

require 'rake'

task :version do 
  puts "Rebirth v#{REBIRTH_VERSION.join(".")}"
end

begin
  require 'spec/rake/spectask'

  desc "Run all specs (tests)"
  Spec::Rake::SpecTask.new do |t|
    t.spec_files = FileList['specs/*_spec.rb']
  end
rescue LoadError
  task :spec do 
    puts "ERROR: RSpec is not installed?"
  end
end

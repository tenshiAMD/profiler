Dir["#{File.dirname(__FILE__)}/factories/profiler/*.rb"].each do |f|
  load File.expand_path(f)
end

desc 'Run milk update'
task :mu do
  system("milk setdb milkode_db")
  system("milk update --all")
  system("milk setdb --default")
end
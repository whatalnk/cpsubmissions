desc 'Run milk update'
task :milk_update do
  system("milk setdb milkode_db")
  system("milk update --all")
  system("milk setdb --default")
end
namespace :cbrc do
  require "#{Rails.root}/lib/tasks/batch_import"
  namespace :import do
    desc "Import Herbarium records from CSV."
    task :import_herbs, [:datafile, :owner] => :environment do |task, args|
      Cbrc::Ingest::Tasks::import_herbs(args.datafile, args.owner)
    end
  end
end
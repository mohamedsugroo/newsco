namespace :github do
  desc "â€ºâ€º Commit with message"
  task :commit, [:message] => :environment do |task, args|
    sh %{ git add -A }
    sh %{ git commit -m "#{args.message}" }
    sh %{ git push }
  end
end

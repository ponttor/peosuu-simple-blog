namespace :deploy do
  desc 'reload the database with seed data'
  task :seed do
    on roles(:all) do
      within current_path do
        execute :bundle, :exec, 'rails', 'db:seed', 'RAILS_ENV=PRODUCTION'
      end
    end
  end
end

namespace :deploy do
  desc 'run server'
  task :run do
    on roles(:all) do
      within current_path do
        with rails_env: :production do
          execute :bundle, :exec, 'server', '-p', '3001'
        end
      end
    end
  end
end
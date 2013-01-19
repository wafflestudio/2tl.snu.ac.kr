# rake db:seed:colleges
namespace :db do
	namespace :seed do
		namespace :colleges do
			task :default => %w(environment) do
				db_seed_users
			end
		end
	end
end

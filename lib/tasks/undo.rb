namespace :db do
    desc "Undo seed data"
    task undo_seed_data: :environment do
      puts "Removing seed data..."
      Movie.destroy_all
      Genre.destroy_all
      Review.destroy_all
      MovieGenre.destroy_all
      User.destroy_all
    end
  end
# Minimal placeholder environment loader to allow RSpec file requires to exist.
# NOTE: This is NOT a full Rails environment. For a real app you should generate the app with `rails new`.
module Rails
  def self.root
    Pathname.new(File.expand_path('..', __dir__))
  end
  def self.env
    ENV['RAILS_ENV'] || 'development'
  end
end

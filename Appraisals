RAILS_VERSIONS = %w[
  5.0
  5.1
  5.2
].freeze

RAILS_VERSIONS.each do |version|
  ver = version.gsub('.', '_')

  appraise "rails_#{ver}" do
    gem 'rails', "~> #{version}.0"

    gem 'bootsnap', '>= 1.1.0'
    gem 'factory_bot'
    gem 'sqlite3'
  end

  appraise "rails_#{ver}_edge" do
      gem 'rails', github: 'rails/rails', branch: "#{version.gsub('.', '-')}-stable"

      gem 'bootsnap', '>= 1.1.0'
      gem 'factory_bot'
      gem 'sqlite3'
  end
end

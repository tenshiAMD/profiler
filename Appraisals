RAILS_VERSIONS = %w[
  5.0
  5.1
  5.2
].freeze

RAILS_VERSIONS.each do |version|
  ver = version.tr('.', '_')

  appraise "rails_#{ver}" do
    gem 'rails', "~> #{version}.0"
  end

  appraise "rails_#{ver}_edge" do
    gem 'rails', github: 'rails/rails', branch: "#{version.tr('.', '-')}-stable"
  end
end

appraise 'rails_6_0_beta' do
  gem 'rails', '~> 6.0.0.beta'
end

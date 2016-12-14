Gem::Specification.new do |gem|
  gem.name          = 'wkhtmltopdf-binary'
  gem.authors       = ['Pablo Barrantes']
  gem.email         = ['pablo.barrantes@ennova.com.au']
  gem.description   = 'Provide a binary of wkhtmltopdf.'
  gem.summary       = 'Provide a binary of wkhtmltopdf.'
  gem.homepage      = 'https://github.com/ennova/wkhtmltopdf-binary'
  gem.files         = `git ls-files`.split($\)
  gem.executables << 'wkhtmltopdf'
  gem.version       = '0.1.0'
end

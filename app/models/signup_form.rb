class SignupForm < SimpleForm
  subject "Registro Web"
  recipients "info@bodypoint.com.ar"
  sender{|c| %{"#{c.name}" <#{c.email}>} }

  attribute :name,      :validate => true
  attribute :telephone, :validate => true
  attribute :email,     :validate => /[^@]+@[^\.]+\.[\w\.\-]+/
end

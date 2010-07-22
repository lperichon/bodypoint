class SignupForm < SimpleForm
  subject "Registro Web"
  recipients "luisperichon@gmail.com"
  sender{|c| %{"#{c.name}" <#{c.email}>} }

  attribute :name,      :validate => true
  attribute :telephone, :validate => true
  attribute :email,     :validate => /[^@]+@[^\.]+\.[\w\.\-]+/
end

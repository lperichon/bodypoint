class ContactForm < SimpleForm
  subject "Contacto Web"
  recipients "luisperichon@gmail.com"
  sender{|c| %{"#{c.name}" <#{c.email}>} }

  attribute :name,      :validate => true
  attribute :telephone, :validate => true
  attribute :email,     :validate => /[^@]+@[^\.]+\.[\w\.\-]+/
  attribute :birth_date
  attribute :message, :validate => true
end

json.extract! customer_license, :id, :applicant_name, :applicant_contact, :applicant_address, :id_type, :id_no, :signature, :created_at, :updated_at
json.url customer_license_url(customer_license, format: :json)

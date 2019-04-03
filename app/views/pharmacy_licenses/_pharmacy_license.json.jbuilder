json.extract! pharmacy_license, :id, :applicant_name, :applicant_contact, :applicant_address, :receipt_number, :ein, :signature, :created_at, :updated_at
json.url pharmacy_license_url(pharmacy_license, format: :json)

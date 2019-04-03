# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_04_03_141214) do

  create_table "customer_licenses", force: :cascade do |t|
    t.string "applicant_name"
    t.string "applicant_contact"
    t.text "applicant_address"
    t.integer "id_type"
    t.string "id_no"
    t.text "signature"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "approved"
  end

  create_table "distributor_licenses", force: :cascade do |t|
    t.string "applicant_name"
    t.string "applicant_contact"
    t.text "applicant_address"
    t.string "receipt_number"
    t.string "ein"
    t.text "signature"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "resolution_by_board_file_name"
    t.string "resolution_by_board_content_type"
    t.bigint "resolution_by_board_file_size"
    t.datetime "resolution_by_board_updated_at"
    t.string "blueprint_file_name"
    t.string "blueprint_content_type"
    t.bigint "blueprint_file_size"
    t.datetime "blueprint_updated_at"
    t.string "proof_of_ownership_file_name"
    t.string "proof_of_ownership_content_type"
    t.bigint "proof_of_ownership_file_size"
    t.datetime "proof_of_ownership_updated_at"
    t.string "pharmacist_affidavit_file_name"
    t.string "pharmacist_affidavit_content_type"
    t.bigint "pharmacist_affidavit_file_size"
    t.datetime "pharmacist_affidavit_updated_at"
    t.string "degree_certificate_file_name"
    t.string "degree_certificate_content_type"
    t.bigint "degree_certificate_file_size"
    t.datetime "degree_certificate_updated_at"
    t.string "invoice_for_refrigerator_file_name"
    t.string "invoice_for_refrigerator_content_type"
    t.bigint "invoice_for_refrigerator_file_size"
    t.datetime "invoice_for_refrigerator_updated_at"
    t.string "invoice_for_ac_file_name"
    t.string "invoice_for_ac_content_type"
    t.bigint "invoice_for_ac_file_size"
    t.datetime "invoice_for_ac_updated_at"
    t.integer "approved"
  end

  create_table "manufacturer_licenses", force: :cascade do |t|
    t.string "applicant_name"
    t.string "applicant_contact"
    t.text "applicant_address"
    t.string "receipt_number"
    t.string "ein"
    t.text "signature"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "resolution_by_board_file_name"
    t.string "resolution_by_board_content_type"
    t.bigint "resolution_by_board_file_size"
    t.datetime "resolution_by_board_updated_at"
    t.string "blueprint_file_name"
    t.string "blueprint_content_type"
    t.bigint "blueprint_file_size"
    t.datetime "blueprint_updated_at"
    t.string "proof_of_ownership_file_name"
    t.string "proof_of_ownership_content_type"
    t.bigint "proof_of_ownership_file_size"
    t.datetime "proof_of_ownership_updated_at"
    t.string "list_of_equipments_file_name"
    t.string "list_of_equipments_content_type"
    t.bigint "list_of_equipments_file_size"
    t.datetime "list_of_equipments_updated_at"
    t.string "list_of_staff_file_name"
    t.string "list_of_staff_content_type"
    t.bigint "list_of_staff_file_size"
    t.datetime "list_of_staff_updated_at"
    t.string "list_of_products_file_name"
    t.string "list_of_products_content_type"
    t.bigint "list_of_products_file_size"
    t.datetime "list_of_products_updated_at"
    t.integer "approved"
    t.integer "user_id"
  end

  create_table "pharmacy_licenses", force: :cascade do |t|
    t.string "applicant_name"
    t.string "applicant_contact"
    t.text "applicant_address"
    t.string "receipt_number"
    t.string "ein"
    t.text "signature"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "blueprint_file_name"
    t.string "blueprint_content_type"
    t.bigint "blueprint_file_size"
    t.datetime "blueprint_updated_at"
    t.string "proof_of_ownership_file_name"
    t.string "proof_of_ownership_content_type"
    t.bigint "proof_of_ownership_file_size"
    t.datetime "proof_of_ownership_updated_at"
    t.string "pharmacist_affidavit_file_name"
    t.string "pharmacist_affidavit_content_type"
    t.bigint "pharmacist_affidavit_file_size"
    t.datetime "pharmacist_affidavit_updated_at"
    t.string "affidavit_of_nonconviction_file_name"
    t.string "affidavit_of_nonconviction_content_type"
    t.bigint "affidavit_of_nonconviction_file_size"
    t.datetime "affidavit_of_nonconviction_updated_at"
    t.integer "approved"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_type"
    t.string "token"
    t.string "card"
    t.binary "card_contents"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end

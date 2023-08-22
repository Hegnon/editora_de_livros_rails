# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_08_22_092626) do
  create_table "accounts", force: :cascade do |t|
    t.integer "fornecedor_id", null: false
    t.string "numero_conta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "digit"
    t.index ["fornecedor_id"], name: "index_accounts_on_fornecedor_id"
  end

  create_table "autors", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fornecedors", force: :cascade do |t|
    t.string "nome"
    t.string "cnpj"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "livros", force: :cascade do |t|
    t.string "titulo"
    t.integer "autor_id", null: false
    t.string "publicado"
    t.string "isbn"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["autor_id"], name: "index_livros_on_autor_id"
  end

  create_table "montagem_pecas", force: :cascade do |t|
    t.integer "montagem_id", null: false
    t.integer "peca_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["montagem_id"], name: "index_montagem_pecas_on_montagem_id"
    t.index ["peca_id"], name: "index_montagem_pecas_on_peca_id"
  end

  create_table "montagems", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "livro_id", null: false
    t.index ["livro_id"], name: "index_montagems_on_livro_id"
  end

  create_table "pecas", force: :cascade do |t|
    t.integer "numero"
    t.string "nome"
    t.string "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "fornecedor_id", null: false
    t.index ["fornecedor_id"], name: "index_pecas_on_fornecedor_id"
  end

  add_foreign_key "accounts", "fornecedors"
  add_foreign_key "livros", "autors"
  add_foreign_key "montagem_pecas", "montagems"
  add_foreign_key "montagem_pecas", "pecas"
  add_foreign_key "montagems", "livros"
  add_foreign_key "pecas", "fornecedors"
end

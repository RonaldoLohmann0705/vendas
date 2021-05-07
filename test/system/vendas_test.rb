require "application_system_test_case"

class VendasTest < ApplicationSystemTestCase
  setup do
    @venda = vendas(:one)
  end

  test "visiting the index" do
    visit vendas_url
    assert_selector "h1", text: "Vendas"
  end

  test "creating a Venda" do
    visit vendas_url
    click_on "New Venda"

    fill_in "Comprador", with: @venda.comprador
    fill_in "Descricao", with: @venda.descricao
    fill_in "Endereco", with: @venda.endereco
    fill_in "Fornecedor", with: @venda.fornecedor
    fill_in "Import", with: @venda.import_id
    fill_in "Preco unitario", with: @venda.preco_unitario
    fill_in "Quantidade", with: @venda.quantidade
    click_on "Create Venda"

    assert_text "Venda was successfully created"
    click_on "Back"
  end

  test "updating a Venda" do
    visit vendas_url
    click_on "Edit", match: :first

    fill_in "Comprador", with: @venda.comprador
    fill_in "Descricao", with: @venda.descricao
    fill_in "Endereco", with: @venda.endereco
    fill_in "Fornecedor", with: @venda.fornecedor
    fill_in "Import", with: @venda.import_id
    fill_in "Preco unitario", with: @venda.preco_unitario
    fill_in "Quantidade", with: @venda.quantidade
    click_on "Update Venda"

    assert_text "Venda was successfully updated"
    click_on "Back"
  end

  test "destroying a Venda" do
    visit vendas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Venda was successfully destroyed"
  end
end

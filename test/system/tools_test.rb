require "application_system_test_case"

class ToolsTest < ApplicationSystemTestCase
  setup do
    @tool = tools(:one)
  end

  test "visiting the index" do
    visit tools_url
    assert_selector "h1", text: "Tools"
  end

  test "should create tool" do
    visit tools_url
    click_on "New tool"

    fill_in "Brand name", with: @tool.brand_name
    fill_in "Purchase date", with: @tool.purchase_date
    fill_in "Purchase location", with: @tool.purchase_location
    fill_in "Tool name", with: @tool.tool_name
    fill_in "Waranty lenght", with: @tool.waranty_lenght
    click_on "Create Tool"

    assert_text "Tool was successfully created"
    click_on "Back"
  end

  test "should update Tool" do
    visit tool_url(@tool)
    click_on "Edit this tool", match: :first

    fill_in "Brand name", with: @tool.brand_name
    fill_in "Purchase date", with: @tool.purchase_date
    fill_in "Purchase location", with: @tool.purchase_location
    fill_in "Tool name", with: @tool.tool_name
    fill_in "Waranty lenght", with: @tool.waranty_lenght
    click_on "Update Tool"

    assert_text "Tool was successfully updated"
    click_on "Back"
  end

  test "should destroy Tool" do
    visit tool_url(@tool)
    click_on "Destroy this tool", match: :first

    assert_text "Tool was successfully destroyed"
  end
end

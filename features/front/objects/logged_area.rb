# Classe LoggedArea
class LoggedArea < SitePrism::Page
  element :create, '#quickcreatetop'
  element :field_subject, '#name'
  element :edit, '#edit_button'
  element :delete, '#delete_button'
  element :click_task, 'a[span="teste_in_12_17"]'
  element :menu_home, '#mobileheader'
  element :field_description, '#description'

  def create_task
    create.hover
    find_link('Create Task').click
    field_subject.set 'teste_in_12_17'
    first("input[class='button primary']").click
  end

  def assert
    assert_text('teste_in_12_17')
  end

  def action_edit
    menu_home.click
    find_link('teste_in_12_17').click
    find_link('ACTIONS').click
    edit.click
    field_subject.set 'teste_in_12_17_edit'
    first("input[class='button primary']").click
  end

  def assert_edit
    assert_text('teste_in_12_17_edit')
  end

  def action_delete
    menu_home.click
    find_link('teste_in_12_...').click
    find_link('ACTIONS').click
    delete.click
  end

  def	assert_delete
    assert_text('TASKS')
    assert_no_text('teste_in_12_17_edit')
  end

  def alert_accept
    page.driver.browser.switch_to.alert.accept
  end
end

# Class Home
class Home < SitePrism::Page
  element :username, '#user_name'
  element :password, '#user_password'
  element :button_login, '#bigbutton'

  def initialize
    @user_data = USER_DATA['data']
  end

  def login
    username.set @user_data['username']
    password.set @user_data['password']
    button_login.click
  end
end

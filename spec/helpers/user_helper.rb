module UserHelper
  def log_in(user)
    visit login_path

    within('form') do
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.Password

      click_on 'Log in'
    end
  end
end

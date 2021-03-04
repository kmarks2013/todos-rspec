module Features
    def sign_in
        visit root_path
        # todos controller redirects me to the signup/signin page and when i go ot the todos page it should work
        fill_in "Email", with: 'person@exmaple.com'
        click_on "Sign in"
    end

    def sign_in_as(email)
        visit root_path
        fill_in "Email", with: email
        click_on "Sign in"
    end

end
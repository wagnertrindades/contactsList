module DeviseHelpers
    def sign_in(options={})
        options[:name] ||= "example"
        options[:email] ||= "example@example.com"
        options[:password] ||= "example123"
        User.create(name: options[:name], email: options[:email], password: options[:password])

        visit "/"
        fill_in "user_email", with: options[:email]
        fill_in "user_password", with: options[:password]
        click_button "Entrar"
    end
end
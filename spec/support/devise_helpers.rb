module DeviseHelpers
    def sign_in(options={})
        options[:name] ||= "example"
        options[:email] ||= "example@example.com"
        options[:password] ||= "example123"
        User.create(name: options[:name], email: options[:email], password: options[:password])

        visit "/"
        fill_in "Email", with: options[:email]
        fill_in "Password", with: options[:password]
        click_button "Entrar"
    end
end
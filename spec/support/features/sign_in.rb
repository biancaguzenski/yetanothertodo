module Features

    # Features module gives us the methods that we will use during tests
    def sign_in
        sign_in_as("person@example.com")
    end
    def sign_in_as(email)
        visit root_path
        fill_in "Email", with: "email"
        click_on "Sign in"
    end
end
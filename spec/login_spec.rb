
describe 'Forms' do 

    it 'Usuário efetua login com sucesso.' do

        visit 'https://www.phptravels.net/login'

        fill_in 'email', with: 'user@phptravels.com'
        fill_in 'password', with: 'demouser'

        script = '$(".btn-lg").attr("name", "Conecte-se");'
        page.execute_script(script)
        click_button 'Conecte-se'

        expect(page).to have_content 'Hi, Demo Welcome Back'
    end

    it 'Usuário efetua login no sistema com falha' do

        visit 'https://www.phptravels.net/login'

        fill_in 'email', with: 'user2@phptravels.com'
        fill_in 'password', with: 'demouser2'

        script = '$(".btn-lg").attr("name", "Conecte-se");'
        page.execute_script(script)
        click_button 'Conecte-se'

        expect(page).to have_content 'Wrong credentials. try again!'
    end
end
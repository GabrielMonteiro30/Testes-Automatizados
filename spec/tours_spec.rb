

describe 'tours', :tour do

    before (:each) do
        visit 'https://www.phptravels.net/tours' 
    end

    it 'tentando fazer uma tour' do

        click_on 'Day Visit of Petra from Oman'
        fill_in 'date', with: '19-01-2022'

        #NAO CONSEGUI CONFIRMAR A QUANTIDADE DE PESSOAS 
        #drop = find('.adults')
        #drop.find('option', text: '2').select_option
        #select('2', text: 'adults')
        #select('1', from: 'childs')
        #select('1', from: 'infants')

        script2 = '$(".ladda").trigger("click");'
        page.execute_script(script2)

        fill_in 'firstname', with: 'gabriel'
        fill_in'lastname', with: 'bandeira'
        fill_in'email', with: 'gabrielmonteiro3006@outlook.com'
        fill_in'phone', with: '61985467317'
        fill_in'address', with: 'Centro'
        select('Brazil', from: 'nationality')
        fill_in 'firstname_1', with: 'gabriel'
        fill_in'lastname_1', with: 'bandeira'
        fill_in 'firstname_2', with: 'gabriel'
        fill_in'lastname_2', with: 'pensador'
        choose('gateway_bank-transfer')
        click_button 'By continuing, you agree to the '
        click_button 'Confirm Booking'
        sleep 3
        
        

        sleep 5
    end
        
end

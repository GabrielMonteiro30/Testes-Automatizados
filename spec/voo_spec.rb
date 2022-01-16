

describe 'voo', :voos do

    it 'Usuário efetua busca de vôos na primeira classe com sucesso.' do
        visit 'https://www.phptravels.net/flights' 

        fill_in 'from', with: 'GYN - Santa Genoveva - Goiania'
        fill_in 'to', with: 'GRU - Guarulhos Gov Andre Franco Montouro - Sao Paulo'
        fill_in 'depart', with: '18-01-2022'

        drop = find('.form-select')
        drop.find('option', text: 'First').select_option

        script = '$(".ladda-button").attr("name", "Search");'
        page.execute_script(script)
        click_button 'Search'
    end
end


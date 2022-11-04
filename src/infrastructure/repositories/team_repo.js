import Team from '../models/team';
import api from './api-caller.js';

function get_teams(successCallback, failCallback) {

    api.get('get_all_teams')
        .then(function(response){
            let teams = [];
            const data = response.data;            
            for(let i = 0; i < data.length; i++){
                const obj = data[0];
                const team = new Team();
                team.team_id = obj.teamid;
                teams.push(team);        
            }

            successCallback(teams);
        })
        .catch(function(err){
            failCallback(err);
        });
}

export { get_teams };
import { get_teams } from './team_repo.js';

function get_teams_test(){
    get_teams(function(res){
        console.log(res[0]);
    },
    function(failure){
        console.log(failure);
    });
}

get_teams_test();
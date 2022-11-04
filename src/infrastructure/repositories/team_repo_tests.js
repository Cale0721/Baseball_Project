import { get_teams } from './team_repo';

function get_teams_test(){
    get_teams(function(res){
        console.log(res);
    })
}

get_teams_test();
function map_team(data){
    const team = {};
    team.team_id = data.teamid;
    team.short_name = data.shortname;
    team.long_name = data.longname;
    team.city = data.cityassociation;
    team.state = data.stateassociation;
    team.venue = data.venuename;
    team.address = data.address;
    team.league = data.leaguename;
    team.division = data.divisioncode;
    return team;
}

function map_teams(data){
    const teams = [];

    for(let i = 0; i < data.length; i++){
        const obj = data[0];       
        teams.push(map_team(obj));        
    }

    return teams;
}

export {map_team, map_teams}
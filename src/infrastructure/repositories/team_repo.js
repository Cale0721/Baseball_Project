import {map_team, map_teams} from '../models/team.js';
import api from './api-caller.js';

function get_teams(successCallback, failCallback) {

    api().get('get_all_teams')
        .then(function(response){
            const data = response.data;            
            successCallback(map_teams(data));
        })
        .catch(function(err){
            failCallback(err);
        });
}

function get_team(id, successCallback, failCallback) {

    api().get('get_team', {params: {id: id}})
        .then(function(response){
            const data = response.data;            
            successCallback(map_teams(data));
        })
        .catch(function(err){
            failCallback(err);
        });
}

export { get_teams };
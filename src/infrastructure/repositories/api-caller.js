import axios from 'axios';

export default () => {
    return axios.create({
        baseURL: 'https://xjuq5buzsj.execute-api.us-east-1.amazonaws.com/General/',
        timeout: 5000
      });
}
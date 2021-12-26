import axios from "axios";

export default class PostService {
    static async getAll(limit = 10, page = 1) {
        const response = await axios.get('https://github.com/alxtt/AnimAll/blob/main/sample-data.json/', {
            params: {
                _limit: limit,
                _page: page
            }
        })
        return response;
    }

    static async getById(id) {
        const response = await axios.get('https://github.com/alxtt/AnimAll/blob/main/sample-data.json/' + id)
        return response;
    }

    static async getCommentsByPostId(id) {
        const response = await axios.get(`https://github.com/alxtt/AnimAll/blob/main/sample-data.json/${id}/comments`)
        return response;
    }
}

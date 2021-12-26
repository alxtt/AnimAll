import axios from "axios";

export default class PostService {
    static async getAll(limit = 10, page = 1) {
        const response = await axios.get('', {
            params: {
                _limit: limit,
                _page: page
            }
        })
        return response;
    }

    static async getById(id) {
        const response = await axios.get('' + id)
        return response;
    }

    static async getCommentsByPostId(id) {
        const response = await axios.get(``)
        return response;
    }
}

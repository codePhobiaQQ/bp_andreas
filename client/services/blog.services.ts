import {back_url, back_strapi_url} from "../vars";
import {IBlog} from "../models/IBlog";

export default class BlogServices {
  static async getAll(): Promise<IBlog[]> {
    let result: IBlog[] = [];
    const blogs = await fetch(`${back_strapi_url}/blogs`).then(
      (res) => res.json()
    ).catch(e => {
      return [] as IBlog[];
    });
    if (!blogs.statusCode) {
      result = blogs;
    }
    return result;
  }

  static async getOne(id: number | undefined): Promise<IBlog> {
    let result = {} as IBlog
    if (id === undefined) {
      return result;
    }
    const blog = await fetch(
      `${back_url}/blogs/${id}`
    ).then(res => res.json());
    if (!blog.statusCode) {
      result = blog.data;
    }
    return result;
  }
}

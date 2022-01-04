import { IVideo } from "../models/IVideo";
import {back_strapi_url} from "../vars";

export default class VideoServices {

  static async getAll(): Promise<IVideo[]> {
    let result: IVideo[] = [];
    const videos = await fetch(`${back_strapi_url}/videos`).then(
      (res) => res.json()
    ).catch(e => {
      return [] as IVideo[];
    });
    if (!videos.statusCode) {
      result = videos;
    }
    return result;
  }

  static async getOne(id: number | undefined): Promise<IVideo> {
    let result = {} as IVideo
    if (id === undefined) {
      return result;
    }
    const video = await fetch(
      `${back_strapi_url}/videos/${id}`
    ).then(res => res.json());
    if (!video.statusCode) {
      result = video.data;
    }
    return result;
  }
}

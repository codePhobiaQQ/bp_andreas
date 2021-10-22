import axios from "axios";
import {back_url} from "../vars";
import {ILivestream} from "../models/ILivestream";

export default class LivestreamServices {

  static async getAll(): Promise<ILivestream[]> {
    try {
      const livestreams = await fetch(`${back_url}/live-streams`).then(
        (res) => res.json()
      );
      return livestreams;
    } catch (e) {
      console.log(e.message);
      return [];
    }
  }

  static async getOne(id: number | undefined): Promise<ILivestream> {
    try {
      if (id === undefined) {
        return {} as ILivestream;
      }
      const response = await axios.get(
        `${back_url}/live-streams/${id}`
      );
      const livestream = response.data;
      return livestream;
    } catch (e) {
      console.log(e.message);
      return {} as ILivestream;
    }
  }
}

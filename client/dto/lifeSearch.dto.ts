import { IVideo } from "../models/IVideo";

export class LifeSearchDto {
  readonly image: string[];
  readonly title: string[];
  readonly id: number[];

  constructor(videos: IVideo[]) {
    this.image = videos.map(video => {
      return video.image
    })
    this.title = videos.map(video => {
      return video.title
    })
    this.id = videos.map(video => {
      return video.id
    })
  }
}
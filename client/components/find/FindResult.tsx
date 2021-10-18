import Link from "next/link";
import React from "react";
import { v4 as uuidv4 } from "uuid";
import {back_url} from "../../vars";

export interface VideoFindI {
  title: string;
  id: number;
  image: string;
}

interface FindResultI {
  videos?: VideoFindI[];
  setIsFind: React.Dispatch<React.SetStateAction<boolean>>;
}

const FindResult = ({ videos, setIsFind }: FindResultI) => {
  return (
    <div className="ResultField">
      {videos && videos.map((video, index) => (
        <div key={uuidv4()} className="findVideoWrapper">
          <Link href={`/home/cards/${video.id}`}>
            <a
              onClick={() => setIsFind(false)}
              className={"findElLine"}>
              {video.image
                ? <img src={`${back_url}${video.image}`} width={70} height={70} />
                : null
              }
              <span>{video.title}</span>
            </a>
          </Link>
        </div>
      ))}
    </div>
  );
};

export default FindResult;
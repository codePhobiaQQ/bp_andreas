import Link from "next/link";
import { IVideo } from "../models/IVideo";
import { NextPage } from "next";
import {ILivestream} from "../models/ILivestream";

interface CardProps {
  card: IVideo | ILivestream;
}

const Card: NextPage<CardProps> = ({ card }) => {
  return (
    <Link href={`/home/cards/${card.id}`}>
      <a className="cardLink">
        <div className="card videoCard">
          <img
            src={`http://localhost:1337${card.image[0].url}`}
            alt="cart"
            className={"preview"}
          />
          <div className="videoInfo">
            <div className="videoInfo__Top">
              <img
                src={`http://localhost:1337${card.image[0].url}`}
                alt="avatar"
                width={45}
                height={45}
                className="authorAvatar"
              />
              <h4>{card.title}</h4>
            </div>
            <div className="price">${card.price}</div>
            <div className="moreButton">
              Show more
            </div>
          </div>
        </div>
      </a>
    </Link>
  );
};

export default Card;

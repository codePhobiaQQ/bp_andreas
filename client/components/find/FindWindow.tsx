import React, {useEffect, useMemo, useState} from 'react'
import Close from "../UI/Close";
import FindLine from "./FindLine";
import lifeSearchServices from "../../services/lifeSearch.services";
import FindResult, {VideoFindI} from "./FindResult";

interface FindProps {
  onClick: React.Dispatch<React.SetStateAction<boolean>>;
}

const FindWindow = ({onClick}: FindProps) => {
  const [findWord, setFindWord] = useState<string>("")
  let AllData: any;
  const [Result, setResult] = useState<VideoFindI[]>([])
  let flag = 0;

  const getData = async () => {
    const video = await lifeSearchServices.findAllData();
    return video;
  }

  const searchData = (word: string): VideoFindI[] => {
    return AllData.title.map((name: string, index: number) => {
      if (name.toLowerCase().includes(word.toLowerCase())) {
        return {
          title: name,
          id: AllData.id[index],
          image: (AllData.image[index])[0].url,
        };
      }
    }).filter((el: VideoFindI) => {
      return (el !== undefined);
    })
  }

  const onChangeFind = async (word: string) => {
    setFindWord(word);
    if (!Object.keys(getData).length && !flag) {
      AllData = await getData();
      flag = 1;
    }
    setResult(searchData(word));
  }

  return (
    <div className="findWindow">
      <Close CloseClick={onClick} />
      <FindLine onChangeFind={onChangeFind} value={findWord} />
      <FindResult setIsFind={onClick} videos={Result} />
    </div>
  );
};

export default FindWindow;
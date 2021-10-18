import { GetServerSideProps } from "next";
import { IVideo } from "../../../models/IVideo";
import VideoServices from "../../../services/video.services";
import React, { useEffect } from "react";
import Video from "../../../components/videoplayer/Video";
import LkVideoContent from "../../../hoc/LkVideoContent";
import LkDashboardGrid from "../../../hoc/LkDashboardGrid";

interface CardPageInterface {
  video: IVideo;
}

const CardPage = ({ video }: CardPageInterface) => {
  useEffect(() => {
    console.log(video);
  }, []);
  return (
    <LkDashboardGrid>
      <Video video={video} />
    </LkDashboardGrid>
  );
};

export const getServerSideProps: GetServerSideProps = async (
  context
): Promise<any> => {
  const video: IVideo = await VideoServices.getOne(Number(context.params?.id));
  if (!video) {
    return { props: {} };
  }
  return {
    props: { video },
  };
};

export default CardPage;

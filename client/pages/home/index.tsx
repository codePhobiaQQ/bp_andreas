import React, { useEffect, useState } from "react";
import LkDashbord from "../../hoc/LkDashbord";
import LkHeaderContent from "../../hoc/LkHeaderContent";
import { GetServerSideProps, GetStaticProps, NextPage } from "next";
import VideoServices from "../../services/video.services";
import { IVideo } from "../../models/IVideo";
import Card from "../../components/Card";
import LkDashboardGrid from "../../hoc/LkDashboardGrid";

interface HomeProps {
  videos: IVideo[];
}

const Index: NextPage<HomeProps> = ({ videos}) => {
  const [activeFilter, setActiveFilter] = useState(1);
  useEffect(() => {
    // console.log("videos", videos);
  }, []);

  return (
    <LkDashboardGrid>
      <main className="admin__main video__main">
        {videos?.map((card, key) => (
          <Card key={key} card={card} />
        ))}
      </main>
    </LkDashboardGrid>
  );
};

export default Index;

export async function getServerSideProps() {
  const videos: IVideo[] = await VideoServices.getAll() || [];
  return {
    props: { videos },
  };
}

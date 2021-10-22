import React from "react";
import LkDashboardGrid from "../hoc/LkDashboardGrid";
import { ILivestream } from "../models/ILivestream";
import LivestreamServices from "../services/livestream.services";
import {IVideo} from "../models/IVideo";
import Card from "../components/Card";

interface LivestreamProps {
  livestreams: ILivestream[];
}

const Livestream = ({ livestreams }: LivestreamProps) => {
  console.log(livestreams);
  return <LkDashboardGrid>
    <main className="admin__main video__main">
      {livestreams?.map((livestream, key) => (
        <Card key={key} card={livestream} />
      ))}
    </main>
  </LkDashboardGrid>;
};

export default Livestream;

export async function getServerSideProps() {
  const livestreams: ILivestream[] = await LivestreamServices.getAll() || [];
  return {
    props: { livestreams },
  };
}

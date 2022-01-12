import MainHeader from "../hoc/MainHeader";
import CSSTransition from "react-transition-group/CSSTransition";
import { useState } from "react";
import Auth from "../components/auth";
import TakeTestSection from "../components/sections/TakeTestSection";
import HowWorkSection from "../components/sections/HowWorkSection";
import AndNumbersSection from "../components/sections/AndNumbersSection";
import SubscriptionSection from "../components/sections/SubscriptionSection";
import AboutSection from "../components/sections/AboutSection";
import TeachersSection from "../components/sections/TeachersSection";
import Footer from "../components/sections/Footer";
import MainSection from "../components/sections/MainSection";
import VideoMp from "../components/videoplayer/videoMP";

export default function Home() {
  const [authVisible, setAuthVisible] = useState(false);
  const [videoVisible, setVideoVisible] = useState(false);
  const [whatTap, setWhatTap] = useState<string>("SingIn");
  const [whatVideo, setWhatVideo] = useState<string>("mainSection");

  return (
    <MainHeader setWhatTab={setWhatTap} setAuthVisible={setAuthVisible}>

      <CSSTransition
        in={authVisible}
        classNames="fadeIn"
        timeout={200}
        unmountOnExit
      >
        <Auth setAuthVisible={setAuthVisible} whatTab={whatTap} />
      </CSSTransition>

      <VideoMp
        setVideoVisible={setVideoVisible}
        isOpen={videoVisible}
      />

      <MainSection
        setVideoVisible={setVideoVisible}
        setWhatTab={setWhatTap}
        setAuthVisible={setAuthVisible}
      />

      <TakeTestSection />

      <HowWorkSection />

      <AboutSection />

      <TeachersSection
        setVideoVisible={setVideoVisible}
      />

      <SubscriptionSection />

      <AndNumbersSection />

      <Footer />

    </MainHeader>
  );
}

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
import Legs from "../components/svg/Legs";
import MainSection from "../components/sections/MainSection";

export default function Home() {
  const [authVisible, setAuthVisible] = useState(false);

  return (
    <MainHeader setAuthVisible={setAuthVisible}>
      <CSSTransition
        in={authVisible}
        classNames="fadeIn"
        timeout={200}
        unmountOnExit
      >
        <Auth setAuthVisible={setAuthVisible} />
      </CSSTransition>

      <MainSection />

      <TakeTestSection />

      <HowWorkSection />

      <AboutSection />

      <TeachersSection />

      <SubscriptionSection />

      <AndNumbersSection />

      <Footer />

    </MainHeader>
  );
}

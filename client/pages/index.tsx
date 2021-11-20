import MainHeader from "../hoc/MainHeader";
import CSSTransition from "react-transition-group/CSSTransition";
import { useState } from "react";
import Auth from "../components/auth";
import Image from "next/image";
import { Container } from "reactstrap";
import { motion } from "framer-motion";
import Tilt from 'react-parallax-tilt';
import LeftRightVariants from "./../variants/LeftRightVariants";
import { useInView } from "react-intersection-observer";
import TakeTestSection from "../components/sections/TakeTestSection";
import HowWork from "../components/sections/HowWork";
import AndNumbersSection from "../components/sections/AndNumbersSection";
import SubscriptionSection from "../components/sections/SubscriptionSection";
import AboutSection from "../components/sections/AboutSection";

export default function Home() {
  const [authVisible, setAuthVisible] = useState(false);
  const variants = new LeftRightVariants(0.7, 0.7);
  const wrapperVariant = variants.wrapperVariant;
  const photoVariant = variants.photoVariant;
  const mainVariantWrapper = variants.mainVariantWrapper;
  const mainVariantChildren = variants.mainVariantChildren;

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

      <motion.section
        variants={wrapperVariant}
        initial="hidden"
        animate="visible"
        className="MainSection"
      >
        <Container>
            <motion.div
              className="contentWrapper"
              variants={mainVariantWrapper}
            >
              <motion.span
                variants={mainVariantChildren}
              >
                For Balboa lovers by Balboa lovers
              </motion.span>

              <motion.h1
                variants={mainVariantChildren}
              >
                Learn balboa online {process.env.PORT}
              </motion.h1>

              <motion.p
                variants={mainVariantChildren}
              >
                A Balboa haven filled with moves and footwork, practice videos and
                tools for solo dancers, couples, practice groups and teachers
                brought to you by top class Balboa dancers1.
              </motion.p>

              <motion.div 
                className="buttonsWrapper"
                variants={mainVariantChildren}
              >
                <button className="blueButton">Try for free</button>

                <div className="videoButtonWrapper">
                  <button className="videoButton">
                    <img
                      src="/assets/img/play.png"
                      alt="play"
                      width={14}
                      height={16}
                    />
                  </button>
                  <span>
                    Play video
                  </span>
                </div>
              </motion.div>
            </motion.div>
            
            <motion.div
              className="imgWrapper"
              variants={photoVariant}
            >
              <Tilt>
                <img
                  src="/assets/img/planet.png"
                  alt="planet"
                  width={750}
                  height={750}
                />
              </Tilt>
            </motion.div>

        </Container>

      </motion.section>

      <TakeTestSection />

      <HowWork />

      <AboutSection />

      <SubscriptionSection />

      <AndNumbersSection />

      <footer>
        <Container>
          <div className="top-part">
            <Image
              src="/assets/img/logo-footer.png"
              width={409}
              height={106}
              alt="logo"
            />
            <ul className="links">
              <li>
                <a href="#">Test</a>
              </li>
              <li>
                <a href="#">Contacts</a>
              </li>
              <li>
                <a href="#">FAQ</a>
              </li>
            </ul>
          </div>
          <div className="bottom-part">
            <span>@ since 2020</span>
            <div className="contacts">
              <a href="mailto:balacademy@gmail.com" className="email">
                balacademy@gmail.com
              </a>
              <div className="socLinks">
                <a href="#">
                  <svg
                    width="9"
                    height="17"
                    viewBox="0 0 9 17"
                    fill="none"
                    xmlns="http://www.w3.org/2000/svg"
                  >
                    <path
                      d="M7.0693 3.41741H8.52996V0.873409C8.27796 0.838742 7.4113 0.760742 6.40196 0.760742C4.29596 0.760742 2.8533 2.08541 2.8533 4.52008V6.76074H0.529297V9.60474H2.8533V16.7607H5.70263V9.60541H7.93263L8.28663 6.76141H5.70196V4.80208C5.70263 3.98008 5.92396 3.41741 7.0693 3.41741Z"
                      fill="black"
                    />
                  </svg>
                </a>
                <a href="#">
                  <svg
                    width="21"
                    height="17"
                    viewBox="0 0 21 17"
                    fill="none"
                    xmlns="http://www.w3.org/2000/svg"
                  >
                    <path
                      d="M8.38495 11.3058L8.05411 15.773C8.52745 15.773 8.73245 15.5778 8.97829 15.3434L11.1975 13.3074L15.796 16.5402C16.6393 16.9914 17.2335 16.7538 17.461 15.7954L20.4794 2.21786L20.4802 2.21706C20.7477 1.02027 20.0294 0.552268 19.2077 0.845866L1.46561 7.36663C0.254751 7.81783 0.273085 8.46583 1.25977 8.75943L5.79572 10.1138L16.3318 3.78505C16.8276 3.46985 17.2785 3.64425 16.9076 3.95945L8.38495 11.3058Z"
                      fill="black"
                    />
                  </svg>
                </a>
              </div>
            </div>
          </div>
        </Container>
      </footer>
    </MainHeader>
  );
}

import {Container} from "reactstrap";
import {motion} from "framer-motion";
import Tilt from "react-parallax-tilt";
import LeftRightVariants from "../../variants/LeftRightVariants";
import React, {Dispatch, useRef, useState} from "react";
import Circle from "../UI/Circle";
import Legs from "../svg/Legs";
import Triangle from "../UI/Triangle";
import {useInView} from "react-intersection-observer";

interface IMainSection {
  setAuthVisible: Dispatch<React.SetStateAction<boolean>>;
  setVideoVisible: Dispatch<React.SetStateAction<boolean>>;
  setWhatTab: Dispatch<React.SetStateAction<string>>;
}

const MainSection = ({setAuthVisible, setWhatTab, setVideoVisible}: IMainSection) => {
  const variants = new LeftRightVariants({});
  const wrapperVariant = variants.wrapperVariant;
  const photoVariant = variants.photoVariant;
  const mainVariantWrapper = variants.mainVariantWrapper;
  const mainVariantChildren = variants.mainVariantChildren;

  const { ref, inView } = useInView({
    threshold: 0.6,
    triggerOnce: true,
  });

  const openAuthHandler = (what: string) => {
    setWhatTab(what);
    setAuthVisible(true);
  }

  return (
    <motion.section
      variants={wrapperVariant}
      initial="hidden"
      animate="visible"
      className="MainSection"
    >

      <Circle classCircle={"circleFirst"} circleFirst={<Legs />} />

      <Container>
        <motion.div
          className="contentWrapper"
          variants={mainVariantWrapper}
          ref={ref}
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
            <button
              className="blueButton"
              onClick={() => openAuthHandler("Register")}
            >
              Try for free
            </button>

            <div
              className="videoButtonWrapper"
              onClick={() => setVideoVisible(true)}
            >
              <button className="videoButton">
                <Triangle />
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
  );
};

export default MainSection;
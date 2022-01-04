import {Container} from "reactstrap";
import {motion} from "framer-motion";
import Tilt from "react-parallax-tilt";
import LeftRightVariants from "../../variants/LeftRightVariants";
import {useEffect, useRef, useState} from "react";
import Circle from "../UI/Circle";
import Legs from "../svg/Legs";

const MainSection = () => {
  const variants = new LeftRightVariants(0.7, 0.7);
  const wrapperVariant = variants.wrapperVariant;
  const photoVariant = variants.photoVariant;
  const mainVariantWrapper = variants.mainVariantWrapper;
  const mainVariantChildren = variants.mainVariantChildren;

  const [top, setTop] = useState<number>(0);
  const ref = useRef<HTMLButtonElement>(null);

  // useEffect(() => {
  //   setTop(ref.current?.offsetTop);
  //   console.log(ref.current?.offsetTop);
  // }, []);

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
              <button ref={ref} className="videoButton">
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
  );
};

export default MainSection;
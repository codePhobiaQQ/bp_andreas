import { motion } from "framer-motion";
import Image from "next/image";
import { useInView } from "react-intersection-observer";
import { Container } from "reactstrap";
import LeftRightVariants from "../../variants/LeftRightVariants";

export default function AboutSection() {
  const { ref, inView } = useInView({
    threshold: 0.6,
    triggerOnce: true,
  });
  const variants = new LeftRightVariants(0.7, 0.7);
  const wrapperVariant = variants.wrapperVariant;
  const mainVariantWrapper = variants.mainVariantWrapper;
  const mainVariantChildren = variants.mainVariantChildren;
  const rightAppear = variants.textVariantRight;
  
  return (
    <motion.section
      className="aboutSection"
      variants={wrapperVariant}
      initial="hidden"
      animate={inView ? "visible" : ""}
      ref={ref}
      id="AboutSection"
    >
      <Container>
        <motion.div variants={mainVariantWrapper} className="contentWrapper">
          <motion.span variants={mainVariantChildren}>What else?</motion.span>
          <motion.h2 variants={mainVariantChildren}>About Bal-Academy</motion.h2>
          <motion.p variants={mainVariantChildren}>
            Bal-Academy is an online dance school and coaching system for
            Balboa dancers of all levels.
          </motion.p>
          <motion.p variants={mainVariantChildren}>
            The system is designed to be very flexible. You will find
            inspiration and learn no matter if you are into figures and
            footwork or broader concepts and want to learn through drills,
            improvisation or more traditional instruction.
          </motion.p>
        </motion.div>
        <motion.div variants={rightAppear} className="imgWrapper">
          <img
            src="/assets/img/phonePhoto.png"
            // width={345}
            // height={682}
            alt="telephone"
          />
        </motion.div>
      </Container>
    </motion.section>
  )
}

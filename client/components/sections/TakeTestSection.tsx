import { Container } from "reactstrap";
import Image from "next/image";
import { useInView } from "react-intersection-observer";
import { motion } from "framer-motion";
import LeftRightVariants from "../../variants/LeftRightVariants";

export default function TakeTestSection() {
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
          ref={ref} 
          className="takeTest"
          variants={wrapperVariant}
          initial="hidden"
          animate={inView ? "visible" : ""}
          id="TestSection"
        >
          <Container>
            <motion.div
              className="contentWrapper"
              variants={mainVariantWrapper}  
            >
              <motion.span variants={mainVariantChildren}>Yes, it’s also free</motion.span>
              <motion.h2 variants={mainVariantChildren}>Find out which kind of dancer you are!</motion.h2>
              <motion.p variants={mainVariantChildren}>
                We have created a set of questions to help you find out who you
                are as a dancer and how you could structure your practices
              </motion.p>
              <motion.div variants={mainVariantChildren} className="buttonsWrapper">
                <button className="blueButton">Try for free</button>
              </motion.div>
            </motion.div>
            <motion.div variants={rightAppear} className="imgWrapper">
              <Image
                src="/assets/img/quizePhoto.png"
                width={730}
                height={495}
                alt="planet"
              />
            </motion.div>
          </Container>
      </motion.section>
    )
}

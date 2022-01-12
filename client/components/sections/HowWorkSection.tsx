import { Container, Row, Col } from "reactstrap";
import { useInView } from "react-intersection-observer";
import LeftRightVariants from "../../variants/LeftRightVariants";
import { motion } from "framer-motion"


export default function HowWorkSection() {
  const { ref, inView } = useInView({
    threshold: 0.4,
    triggerOnce: true,
  });
  const variants = new LeftRightVariants({})
  const wrapperVariant = variants.wrapperVariant;
  const mainVariantWrapper = variants.mainVariantWrapper;
  const mainVariantChildren = variants.mainVariantChildren;

  return (
      <motion.section 
        className="howWork"
        variants={wrapperVariant}
        initial="hidden"
        animate={inView ? "visible" : ""}
        ref={ref}
      >
        <Container>
          <span>Step by step</span>
          <h2>How it works</h2>
          <motion.div variants={mainVariantWrapper}>
            <Row>
              <Col sm={6} lg={4}>
                <motion.div variants={mainVariantChildren} className="step">
                  <div className="number">01</div>
                  <h3>Sign up</h3>
                  <p>
                    Sign up and create an account. Are you going to use
                    Bal-Academy as a teacher or a student?
                  </p>
                </motion.div>
              </Col>
              <Col sm={6} lg={4}>
                <motion.div variants={mainVariantChildren} className="step">
                  <div className="number">02</div>
                  <h3>Do the test</h3>
                  <p>
                    Do the self-assessment test in order to find out how to best
                    use Bal-Academy
                  </p>
                </motion.div>
              </Col>
              <Col sm={6} lg={4}>
                <motion.div variants={mainVariantChildren} className="step">
                  <div className="number">03</div>
                  <h3>Pricing packages</h3>
                  <p>
                    Choose your most favorable pricing package, based on your
                    practice plan
                  </p>
                </motion.div>
              </Col>
              <Col sm={6} lg={4}>
                <motion.div variants={mainVariantChildren} className="step bottom">
                  <div className="number">04</div>
                  <h3>Pick and choose</h3>
                  <p>
                    What would you like to learn and to practice? Pick and shoose
                    amon hundreds of videos and practices.
                  </p>
                </motion.div>
              </Col>
              <Col sm={6} lg={4}>
                <motion.div variants={mainVariantChildren} className="step bottom">
                  <div className="number">05</div>
                  <h3>Dance, dance, dance</h3>
                  <p>
                    Dance and practice alone, with a friend, a dance partner or
                    with a group of friends. Enjoy!
                  </p>
                </motion.div>
              </Col>
              <Col sm={6} lg={4}>
                <motion.div variants={mainVariantChildren} className="step bottom">
                  <div className="number">06</div>
                  <h3>Ask for feedback</h3>
                  <p>
                    We all need help at times. Ask any of the Bal-Academy teachers
                    for feedback or advices
                  </p>
                </motion.div>
              </Col>
            </Row>
          </motion.div>
        </Container>
    </motion.section>
  )
}

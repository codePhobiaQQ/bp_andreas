import { motion } from "framer-motion";
import { useInView } from "react-intersection-observer";
import LeftRightVariants from "../../variants/LeftRightVariants";
import { Container } from "reactstrap";
import { useState } from "react";

export default function TeachersSection() {
    const { ref, inView } = useInView({
        threshold: 0.6,
        triggerOnce: true,
      });
    const variants = new LeftRightVariants(0.7, 0.7);
    const wrapperVariant = variants.wrapperVariant;

    const [activeTeacher, setTeacher] = useState<number>(0);

    return (
        <motion.section 
            ref={ref} 
            className="TeachersSection"
            variants={wrapperVariant}
            initial="hidden"
            animate={inView ? "visible" : ""}
            id="TeachersSection"
        >
            <span>You know these guys</span>
            <h2>Featured teachers</h2>
            <Container>
                <div className="TeacherPhotos">
                    <img src="" alt="teacher"/>
                </div>
            </Container>
        </motion.section>
    )
}

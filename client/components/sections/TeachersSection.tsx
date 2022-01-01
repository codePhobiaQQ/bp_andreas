import { motion } from "framer-motion";
import { useInView } from "react-intersection-observer";
import LeftRightVariants from "../../variants/LeftRightVariants";
import { Container } from "reactstrap";
// import { Swiper, SwiperSlide } from 'swiper/react';

export default function TeachersSection() {
    const { ref, inView } = useInView({
        threshold: 0.6,
        triggerOnce: true,
      });
    const variants = new LeftRightVariants(0.7, 0.7);
    const wrapperVariant = variants.wrapperVariant;

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
                {/*<Swiper*/}
                {/*  spaceBetween={50}*/}
                {/*  slidesPerView={1}*/}
                {/*  onSlideChange={() => console.log('slide change')}*/}
                {/*  onSwiper={(swiper) => console.log(swiper)}*/}
                {/*>*/}
                {/*    <SwiperSlide>Slide 1</SwiperSlide>*/}
                {/*    <SwiperSlide>Slide 2</SwiperSlide>*/}
                {/*</Swiper>*/}
            </Container>
        </motion.section>
    )
}

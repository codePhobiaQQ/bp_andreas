import { motion } from "framer-motion";
import { useInView } from "react-intersection-observer";
import LeftRightVariants from "../../variants/LeftRightVariants";
import { Container } from "reactstrap"
import andreasPhoto from "../../public/assets/img/auth-img.png";
// import { Swiper, SwiperSlide } from 'swiper/react';

export default function TeachersSection() {
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
            {/*    className="teachersSlider"*/}
            {/*    slidesPerView={1}*/}
            {/*>*/}
            {/*    <SwiperSlide>*/}
            {/*        <img src={andreasPhoto.src} alt="teacher" />*/}
            {/*    </SwiperSlide>*/}
            {/*    <SwiperSlide>*/}
            {/*        <img src={andreasPhoto.src} alt="teacher" />*/}
            {/*    </SwiperSlide>*/}
            {/*    <SwiperSlide>*/}
            {/*        <img src={andreasPhoto.src} alt="teacher" />*/}
            {/*    </SwiperSlide>*/}
            {/*</Swiper>*/}
            </Container>
        </motion.section>
    )
}

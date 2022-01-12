import {motion} from "framer-motion";
import {useInView} from "react-intersection-observer";
import LeftRightVariants from "../../variants/LeftRightVariants";
import {Container} from "reactstrap";
import React, {Dispatch, useState} from "react";
import andreas from "../../public/assets/img/auth-img.png"
import Triangle from "../UI/Triangle";
import Facebook from "../UI/Facebook";
import LinkedIn from "../UI/LinkedIn";
import tab from "../../public/assets/img/tab.png"
import { v4 as uuidv4 } from 'uuid';
import Circle from "../UI/Circle";
import Music from "../svg/Music";

interface TeacherI {
  name: string;
  description: string;
  photo: any;
  facebook: string;
  linkedIn: string;
  bigImg: any;
}

interface ITeacherSection {
  setVideoVisible: Dispatch<React.SetStateAction<boolean>>;
}

export default function TeachersSection({setVideoVisible}: ITeacherSection) {
  const [activeTeacher, setTeacher] = useState<number>(0);
  const teachers: TeacherI[] = [
    {
      name: "Andreas Olsson",
      description: "Andreas Olsson is a World Champion dancer and international " +
        "teacher of Balboa, Lindy Hop and other swing dances. he is known his creativity" +
        " and musicality on the dance floor. Andreas is the founder of Bal-Academy.",
      photo: "test",
      facebook: "test",
      linkedIn: "test",
      bigImg: "test"
    },
    {
      name: "Andreas Olsson1",
      description: "Andreas Olsson is a World Champion dancer and international " +
        "teacher of Balboa, Lindy Hop and other swing dances. he is known his creativity" +
        " and musicality on the dance floor. Andreas is the founder of Bal-Academy.",
      photo: "test",
      facebook: "test",
      linkedIn: "test",
      bigImg: "test"
    },
    {
      name: "Andreas Olsson2",
      description: "Andreas Olsson is a World Champion dancer and international " +
        "teacher of Balboa, Lindy Hop and other swing dances. he is known his creativity" +
        " and musicality on the dance floor. Andreas is the founder of Bal-Academy.",
      photo: "test",
      facebook: "test",
      linkedIn: "test",
      bigImg: "test"
    },
  ]

  const variants = new LeftRightVariants({})
  const wrapperVariant = variants.wrapperVariant;
  const fadeInBottom = variants.fadeInBottom;

  const { ref, inView } = useInView({
    threshold: 0.6,
    // triggerOnce: true,
  });

  const clickTabHandler = (index: number) => {
    setTeacher(index);
  }


  return (
    <section
      className="TeachersSection"
      id="TeachersSection"
    >
      <span>You know these guys</span>
      <h2>Featured teachers</h2>
      <Container>
        <div className="TeacherPhotos">
            {/*<Circle classCircle={"teacherCircle"} circleFirst={<Music />} />*/}
            <img src={andreas.src} alt="teacher"/>
        </div>
        <div className="TeacherDescription">
          <h3 className="name">
            {teachers[activeTeacher].name}
          </h3>
          <p className="description">{teachers[activeTeacher].description}</p>
          <div onClick={() => {setVideoVisible(true)}} className="videoButtonWrapper">
            <button className="videoButton">
              <Triangle />
            </button>
            <span>
              Play video
            </span>
            <div className="socials">
              <a href={teachers[activeTeacher].facebook}>
                <Facebook />
              </a>
              <a href={teachers[activeTeacher].linkedIn}>
                <LinkedIn />
              </a>
            </div>
          </div>
          <div className="tabs">
            {teachers.map((teacher, index) => (
              <div
                onClick={() => clickTabHandler(index)}
                key={uuidv4() + "teachr"}
                className="tab"
              >
                <img src={tab.src} alt="tab"/>
              </div>
            ))}
          </div>
        </div>
      </Container>
    </section>
  )
}

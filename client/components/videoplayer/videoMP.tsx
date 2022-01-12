import React, {Dispatch, useRef} from "react";
import Close from "../UI/Close";
import ReactPlayer from "react-player";
import {motion} from "framer-motion";
import LeftRightVariants from "../../variants/LeftRightVariants";
import {useInView} from "react-intersection-observer";

interface IVideoMp {
  isOpen: boolean;
  setVideoVisible: Dispatch<React.SetStateAction<boolean>>;
}

const VideoMp = ({isOpen, setVideoVisible}: IVideoMp) => {
  const videoJsOptions = {
    autoPlay: true,
    controls: true,
    url: "https://www.youtube.com/watch?v=y66RgYMAgSo",
    light: '',
    sources: [
      {
        src: "https://www.youtube.com/watch?v=y66RgYMAgSo",
        type: "video/mp4",
      },
    ],
    youtube: {
      playerVars: { showinfo: 1 }
    }
  };

  const { ref, inView } = useInView({
    threshold: 0.6,
  });
  const variants = new LeftRightVariants({ delay: .4 });
  const fadeIn = variants.fadeIn;

  return (
    <div className={isOpen ? "videoMpWrapper active" : "videoMpWrapper"}>
      <Close CloseClick={() => setVideoVisible(false)} />
      <motion.div
        ref={ref}
        className="videoWrapper"
        initial="hidden"
        variants={fadeIn}
        animate={inView ? "visible" : ""}
      >
        <ReactPlayer className={"hello"} {...videoJsOptions} width={'100%'} height={'100%'} />
      </motion.div>
    </div>
  );
};

export default VideoMp;
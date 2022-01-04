export default class LeftRightVariants {
  wrapperVariant = { hidden: {}, visible: {transition: { staggerChildren: 0.7, }} }
  textVariantLeft = {
    hidden: {
      x: -100,
      opacity: 0,
    },
    visible: {
      x: 0,
      opacity: 1,
      transition: {
        duration: 0.7
      }
    },
  }
  mainVariantWrapper = {
    hidden: {},
    visible: {
      transition: {
        staggerChildren: 0.4,
      }
    }
  }
  mainVariantChildren = {
    hidden: {
      opacity: 0,
      y: -15,
    },
    visible: {
      opacity: 1,
      y: 0,
      transition: {
        duration: 0.7,
      }
    }
  }


  textVariantRight = {
    hidden: {
      x: 100,
      opacity: 0,
    },
    visible: {
      x: 0,
      opacity: 1,
      transition: {
        duration: 0.7,
      }
    },
  }
  photoVariant = {
    hidden: {
      scale: 0.95,
      opacity: 0,
    },
    visible: {
      opacity: 1,
      scale: 1,
      transition: {
        duration: 0.7,
      }
    },
  }
  fadeInBottom = {
    hidden: {
      scale: 0.97,
      opacity: 0,
      y: 70,
    },
    visible: {
      opacity: 1,
      scale: 1,
      y: 0,
      transition: {
        duration: 0.7,
        when: "beforeChildren",
        staggerChildren: 0.2
      }
    },
  }
  fadeIn = {
    hidden: {
      scale: 0.97,
      opacity: 0,
    },
    visible: {
      opacity: 1,
      scale: 1,
      transition: {
        duration: 0.7,
      }
    },
  }

  errorVariant = {
    hidden: {
      opacity: 0,
      pointerEvents: "none",

    },
    visible: {
      opacity: 1,
      pointerEvents: "auto",
      backgroundColor: "#0f0f0f"
    }
  }

  constructor(duration: number, interval: number) {
    this.wrapperVariant.visible.transition.staggerChildren = duration;

    this.textVariantLeft.visible.transition.duration = duration;

    this.textVariantRight.visible.transition.duration = duration;

    this.photoVariant.visible.transition.duration = duration;

    this.fadeInBottom.visible.transition.duration = duration;

    this.fadeIn.visible.transition.duration = duration;

    this.mainVariantChildren.visible.transition.duration = duration;

  }
}


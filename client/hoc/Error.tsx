import useTypedSelector from "../hooks/useTypedSelector";
import { motion } from "framer-motion";
import LeftRightVariants from "../variants/LeftRightVariants";
import {useDispatch} from "react-redux";
import {errorTest} from "../redux/slices/AppSlice"

const Error = (props: any) => {
  const dispatch = useDispatch();
  const isError = useTypedSelector(state => state.app.isError);
  const errorMessage = useTypedSelector(state => state.app.errorMessage);

  const variants = new LeftRightVariants(0.7, 0.7);
  const errorVariant = variants.errorVariant;

  console.log(isError, "isError")
  console.log(errorMessage, "errroMessage")

  return (
    <>
      <div
        onClick={() => dispatch(errorTest())}
      >
        aahah
      </div>

      <motion.div
        variants={errorVariant}
        className="errorWrapper"
        initial="hidden"
        animate={isError ? "visible" : ""}
      >
        {errorMessage}
      </motion.div>
      {props.children}
    </>
  );
};

export default Error;
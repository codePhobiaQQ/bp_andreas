import useTypedSelector from "../hooks/useTypedSelector";
import { motion } from "framer-motion";
import LeftRightVariants from "../variants/LeftRightVariants";
import {useDispatch} from "react-redux";

const ErrorComponent = (props: any) => {
  const dispatch = useDispatch();
  const isError = useTypedSelector(state => state.app.isError);
  const errorMessage = useTypedSelector(state => state.app.errorMessage);

  const variants = new LeftRightVariants(0.7, 0.7);
  const errorVariant = variants.errorVariant;

  return (
    <>
      <motion.div
        variants={errorVariant}
        className="errorWrapper"
        initial="hidden"
        animate={isError ? "visible" : ""}
      >
        {errorMessage || "error"}
      </motion.div>
      {props.children}
    </>
  );
};

export default ErrorComponent;
import {v4 as uuidv4} from "uuid";
import Checkbox from "../UI/Checkbox";

interface ISquareVariant {
  answer: string;
}

const SquareVariants = ({answer}: ISquareVariant) => {
  return (
    <div className="variant">
      <Checkbox
        type="checkbox"
        id={uuidv4() + "check"}
      />
      <span>{answer}</span>
    </div>
  );
};

export default SquareVariants;
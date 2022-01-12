import SquareVariants from "./squareVariants";
import {IQuestion} from "../../pages/test";
import { v4 as uuidv4 } from 'uuid';
import CircleVariants from "./circleVariants";

interface ITypeOfVariants {
  type: string;
  question: IQuestion;
}

const TypeOfVariants = ({type, question}: ITypeOfVariants) => {
  if (type == "square") {
    return (
      <>
        {question.answers.map((answer, index) => (
          <SquareVariants key={uuidv4() + index} answer={answer} />
        ))}
      </>
    )
  } else if (type == "circle") {
    return (
      <>
        {question.answers.map((answer, index) => (
          <CircleVariants key={uuidv4() + index} answer={answer} />
        ))}
      </>
    )
  } else {
    return <div>test</div>
  }

};

export default TypeOfVariants;
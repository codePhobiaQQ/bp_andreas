import {Container} from "reactstrap";
import {useState} from "react";
import Checkbox from "../../components/UI/Checkbox";
import { v4 as uuidv4 } from 'uuid';
import TypeOfVariants from "../../components/test/typeOfVariants";

export interface IQuestion {
  title: string;
  oneAnswer: boolean;
  answers: string[];
  type: string;
}

const Test = () => {
  const [value, setValue] = useState([]);
  const [activeQuestion, setActiveQuestion] = useState<number>(0);


  const skipQuestionHandler = () => {
    if (activeQuestion + 1 > questions.length) {
      console.log("thats all")
    } else {
      setActiveQuestion(activeQuestion + 1);
    }
  }
  const nextQuestionHandler = () => {
    if (activeQuestion + 1 > questions.length) {
      console.log("thats all")
    } else {
      setActiveQuestion(activeQuestion + 1);
    }
  }
  const prevQuestionHandler = () => {
    if (activeQuestion - 1 < 0) {
      console.log("thats all")
    } else {
      setActiveQuestion(activeQuestion - 1);
    }
  }


  const questions: IQuestion[] = [
    {
      title: "Here will be the question here will be the quest here will be the question?",
      oneAnswer: true,
      type: "square",
      answers: ["Not chosen option",
                "Chosen option chosen option hosen option hosen option hosen option hosen option hosen option.",
                "Not chosen option chosen option hosen option hosen option hosen option hosen option hosen option.",
                "Not chosen option chosen option hosen option hosen option hosen option hosen option hosen option.",
                "Not chosen option chosen option hosen option hosen option hosen option hosen option hosen option.",
                "Not chosen option chosen option hosen option hosen option hosen option hosen option hosen option.",
              ],

    },
    {
      title: "Here will be the question here will be the quest here will be the question?1",
      oneAnswer: false,
      type: "circle",
      answers: ["Not chosen option",
                "Chosen option chosen option hosen option hosen option hosen option hosen option hosen option.",
                "Not chosen option chosen option hosen option hosen option hosen option hosen option hosen option.",
      ],
    },
    {
      title: "Here will be the question here will be the quest here will be the question?1",
      oneAnswer: false,
      type: "circle",
      answers: ["Not chosen option",
        "Chosen option chosen option hosen option hosen option hosen option hosen option hosen option.",
        "Not chosen option chosen option hosen option hosen option hosen option hosen option hosen option.",
      ],
    }
  ]

  return (
    <section className="testSection">
      <Container>
        <div className="question">
          <div className="number">Question {activeQuestion + 1}/{questions.length}</div>
          <h3 className="title">Here will be the question here will be the quest here will be the question?</h3>
          <div className="variants">
            <TypeOfVariants type={questions[activeQuestion].type} question={questions[activeQuestion]} />
          </div>

          <div className="bottomSection">
            <button className="next" onClick={() => nextQuestionHandler()}>Next</button>
            <span className="skip" onClick={() => skipQuestionHandler()}>Skip this question</span>
            {activeQuestion
              ? <span className="prev" onClick={() => prevQuestionHandler()}>Previous question</span>
              : null
            }
          </div>

        </div>
      </Container>
    </section>
  );
};

export default Test;
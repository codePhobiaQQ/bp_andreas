import React from 'react'

interface ICircleVariant {
  answer: string;
}

const CircleVariants = ({answer}: ICircleVariant) => {
  return (
    <>
      <label className="radio">
        <input type="radio" name="r" value="1" />
          <span className={"circleVar"}></span>
          <span className={"text"}>{answer}</span>
      </label>
    </>
  );
};

export default CircleVariants;
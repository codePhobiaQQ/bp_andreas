import MediaQuery from 'react-responsive'
import React from 'react'

interface CircleI {
  classCircle: string;
  circleFirst: any;
  circleSecond?: any;
}

const Circle = ({classCircle, circleFirst, circleSecond}: CircleI) => {
  return (
    <MediaQuery minWidth={992}>
      <div className={"circle " + classCircle}>
        <div className="circleLegs">
          {circleFirst}
        </div>
        {circleSecond
          ? <div className="circleLegs circleLegsTwo">
            {circleSecond}
          </div>
          : null}
        <div className="circleInner">
          <div className="circleContent"></div>
        </div>
      </div>
    </MediaQuery>
  );
};

export default Circle;
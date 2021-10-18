import React, { SetStateAction } from "react";

interface FindLineProps {
  value: string;
  onChangeFind: any;
}

const FindLine = ({ value, onChangeFind }: FindLineProps) => {
  return (
    <div className="findLine">
      <svg
        xmlns="http://www.w3.org/2000/svg" className="findIcon" fill="none" viewBox="0 0 24 24" >
        <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" />
      </svg>
      <input value={value} onChange={(e: React.ChangeEvent<HTMLInputElement>) => onChangeFind(e.target.value)} type="text"/>
    </div>
  );
};

export default FindLine;
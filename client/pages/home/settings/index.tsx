import LkDashboardGrid from "../../../hoc/LkDashboardGrid";
import React, {useState} from "react";
import useTypedSelector from "../../../hooks/useTypedSelector";
import Select from "react-select";
import {IVideo} from "../../../models/IVideo";
import VideoServices from "../../../services/video.services";
import UserServices from "../../../services/user.services";
import {ILevel} from "../../../models/ILevel";

interface SettingsI {
  leveles: ILevel[];
}

const SettingsPage = ({ leveles }: SettingsI) => {

  const user = useTypedSelector(state => state.user.user);
  const [name, setName] = useState<string>(user.username);
  const [last_name, setLastName] = useState<string>(user.lastname);
  const [email, setEmail] = useState<string>(user.email);

  const options = leveles.map((el => {
    return { value: el.id, label: el.level }
  }))

  const customStyles = {
    menu: (provided: any, state: any) => ({
      ...provided,
      width: state.selectProps.width,
      borderBottom: '1px dotted pink',
      color: state.selectProps.menuColor,
      height: '44px',
      padding: '9'
    }),
    option: (provided: any, state: any) => ({
      ...provided,
      borderBottom: '1px dotted pink',
      color: state.isSelected ? 'red' : 'blue',
      padding: 20,
    }),
    control: () => ({
      width: 200,
    }),
    singleValue: (provided: any, state: any) => {
      const opacity = state.isDisabled ? 0.5 : 1;
      const transition = 'opacity 300ms';

      return { ...provided, opacity, transition };
    }
  }

  const changeHandler = () => {

  }

  // const level = useState<string>(use);

  return (
    <LkDashboardGrid>
      <main className="admin__main account__main">
        <div className="settingsWrapper">
          <h2>Account Settings</h2>
          <h3>Personal information</h3>
          <div className="changingFields">
            <div className="changingField">
              <label htmlFor="Settings-FN">First name</label>
              <input
                onChange={(e) => setName(e.target.value)}
                id="Settings-FN"
                type="text"
                value={name}
              />
            </div>
            <div className="changingField">
              <label htmlFor="Settings-LN">Last name</label>
              <input
                onChange={(e) => setLastName(e.target.value)}
                id="Settings-LN"
                type="text"
                value={last_name}
              />
            </div>
            <div className="changingField">
              <label htmlFor="Settings-Email">Email</label>
              <input
                onChange={(e) => setEmail(e.target.value)}
                id="Settings-Email"
                type="text"
                value={email}
              />
            </div>
            <div className="changingField">
              <label htmlFor="Settings-DL">Dance level</label>
              <Select options={options} />
            </div>
            {/*<div className="changingField">*/}
            {/*  <label htmlFor="Settings-avatar">Avatar</label>*/}
            {/*  <input*/}
            {/*    // onChange={(e) => setEmail(e.target.value)}*/}
            {/*    id="Settings-avatar"*/}
            {/*    type="file"*/}
            {/*    // value={email}*/}
            {/*  />*/}
            {/*</div>*/}
          </div>
          <div className="separator"></div>
          <button>Save changes</button>
        </div>
      </main>
    </LkDashboardGrid>
  );
};

export default SettingsPage;

export async function getServerSideProps() {
  const leveles = await UserServices.getLeveles() || [];
  return {
    props: { leveles },
  };
}
import Close from "../UI/Close";
import {Button} from "reactstrap";
import { useState } from "react";
import UserServices from "../../services/user.services";

interface UsersActionsI {
  closeClick: () => void;
  id: number;
}

const UsersActions = ({closeClick, id}: UsersActionsI) => {
  const [banReason, setBanReason] = useState<string>("");

  const banHandler = async () => {
    try {
      if (banReason == "") {
        console.log("reason cant be empty");
        throw new Error("reason cant be empty");
      }
      const response = await UserServices.ban({id, reason: banReason});
      console.log(response);
    } catch (e) {
      console.log(e.message);
    }
  }

  const unbanHandler = async () => {
    try {
      const response = await UserServices.unban(id);
      console.log(response);
    } catch (e) {
      console.log(e.message);
    }
  }

  const makePremium = async () => {
    try {
      const response = await UserServices.makePremium(id);
      console.log(response);
    } catch (e) {
      console.log(e.message);
    }
  }

  const removePremium = async () => {
    try {
      const response = await UserServices.removePremium(id);
      console.log(response);
    } catch (e) {
      console.log(e.message);
    }
  }

  return (
    <div className="userActions">
      <Close CloseClick={closeClick} />
      <div className="userActionsIntro">
        <div className="banReason">
          <label htmlFor="banReason">Ban Reason:</label>
          <input id="banReason"
                 value={banReason}
                 onChange={(e) => {setBanReason(e.target.value)}}
                 type="text"
          />
        </div>
        <Button onClick={() => banHandler()}>Ban</Button>
        <Button onClick={() => unbanHandler()}>Unban</Button>
        <Button onClick={() => makePremium()}>Make Premium</Button>
        <Button onClick={() => removePremium()}>Remove Premium</Button>
      </div>
    </div>
  );
};

export default UsersActions;
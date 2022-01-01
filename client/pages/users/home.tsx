import { IUser } from "../../models/IUser";
import { v4 as uuidv4 } from 'uuid';
import {cloneNode} from "@babel/types";

interface UserHomeI {
  users: IUser[];
}

const UserHome = ({users}: UserHomeI) => {
  const openHandler = (index: number) => {

  }

  return (
    <div className="AllUsers">
      <ul className="responsive-table">
        <li className="table-header">
          <div className="col-1 col">Id</div>
          <div className="col">Name</div>
          <div className="col">Email</div>
          <div className="col">IsActive</div>
          <div className="col">Banned</div>
          <div className="col">BanReason</div>
          <div className="col">ResetLink</div>
          <div className="col">ConfirmedLink</div>
        </li>
        {users.map((user, index) => (
          <li className="table-row" key={uuidv4() + index}>
            <div className="col-1">{user.id}</div>
            <div className="col">{user.name}</div>
            <div className="col">{user.email}</div>
            <div className="col">{user.isActive ? "Yes" : "No"}</div>
            <div className="col">{user.banned ? "Yes" : "No"}</div>
            <div className="col">{user.banReason}</div>
            <div className="col">{user.resetLink}</div>
            <div className="col">{user.confirmLink}</div>
          </li>
        ))}
      </ul>
    </div>
  );
};

export default UserHome;

export async function getStaticProps(context: any): Promise<{props: UserHomeI}> {
  try {
    const users: IUser[] = await fetch('http://localhost:5000/user/all-users').then((data) => {
      return data.json();
    });
    return {
      props: {users}
    }
  } catch (e) {
    return {
      props: {users: [] as IUser[]}
    }
  }

}
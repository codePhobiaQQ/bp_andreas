import { IUser } from "../../models/IUser";
import { v4 as uuidv4 } from 'uuid';

interface UserHomeI {
  users: IUser[];
}

const UserHome = ({users}: UserHomeI) => {
  return (
    <div className="AllUsers">


      <ul className="responsive-table">
        <li className="table-header">
          <div className="col">Id</div>
          <div className="col">Name</div>
          <div className="col">Email</div>
          <div className="col">IsActive</div>
          <div className="col">Banned</div>
          <div className="col">BanReason</div>
        </li>
        {users.map((user, index) => (
          <li className="table-row" key={uuidv4() + index}>
            <div className="col" data-label="Id">{user.id}</div>
            <div className="col" data-label="Name">{user.name}</div>
            <div className="col" data-label="Amount">{user.email}</div>
            <div className="col" data-label="Status">{user.isActive ? "Yes" : "No"}</div>
            <div className="col" data-label="Status">{user.banned ? "Yes" : "No"}</div>
            <div className="col" data-label="Status">{user.banReason}</div>
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
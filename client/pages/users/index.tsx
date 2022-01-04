import {useState} from "react";
import {Button} from "reactstrap";
import axios from "axios";
import useTypedSelector from "../../hooks/useTypedSelector";
import Link from "next/link";
import {v4 as uuidv4} from "uuid";
import {useDispatch} from "react-redux";
import {setUser} from "../../redux/slices/UserSlice";
import {IUser} from "../../models/IUser";
import UsersActions from "../../components/users/UsersActions";

interface IResponse {
  data: {
    user: IUser;
    accessToken: string;
  }
}

const UserPage = (props: {users: IUser[]}) => {
  const [email, setEmail] = useState<string>("");
  const [password, setPassword] = useState<string>("");
  let isAdmin = useTypedSelector(state => state.user.isAdmin);
  const dispatch = useDispatch();
  const [isModal, setModal] = useState<boolean>(false)
  const [userId, setUserId] = useState<number>(0);

  const clickUserHandler = (id: number) => {
    setModal(true);
    setUserId(id);
  }

  const closeClick = () => {
    setModal(false)
  }

  const loginAction = async () => {
    try {
      const user: IResponse = await axios.post('http://localhost:5000/auth/login', {email, password});
      dispatch(setUser(user.data.user));
      localStorage.setItem('token', user.data.accessToken);
    } catch (e) {
      console.log(e.message);
    }
  }

  if (isAdmin) return (
    <>
      {isModal && <UsersActions id={userId} closeClick={closeClick} />}

      <div className="AllUsers">
        <div className="back">
          <Link href="/">
            Back Home
          </Link>
        </div>
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
          {props.users.map((user, index) => (
            <li
              className="table-row"
              key={uuidv4() + index}
              onClick={() => clickUserHandler(user.id)}
            >
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
    </>
  );
  else {
    return (
      <div className="usersSections">
        <div className="back">
          <Link href="/">
            Back Home
          </Link>
        </div>
        <div className="formContainer">
          <span>Login</span>
          <input onChange={e => setEmail(e.target.value)} type="text"/>
          <span>Password</span>
          <input onChange={e => setPassword(e.target.value)} type="text"/>
          <Button onClick={loginAction}>Login</Button>
        </div>
      </div>
    )
  }
};


export default UserPage;


export async function getStaticProps(context: any): Promise<{props: {users: IUser[]}}> {
  let result: IUser[] = [];
  const users: IUser[] = await fetch('http://localhost:5000/user/all-users').then((data) => {
    return data.json();
  }).catch(e => {
    console.log(e);
    return [] as IUser[];
  });
  result = users;
  return {
    props: {users: result}
  }

}
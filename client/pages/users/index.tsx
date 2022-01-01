import {useEffect, useState} from "react";
import {Button} from "reactstrap";
import axios from "axios";
import {useRouter} from "next/router";
import useTypedSelector from "../../hooks/useTypedSelector";
import Link from "next/link";
import {v4 as uuidv4} from "uuid";

const UserPage = () => {
  const [email, setEmail] = useState<string>("");
  const [password, setPassword] = useState<string>("");
  const { isAdmin } = useTypedSelector(state => state.user);
  const { isLoading } = useTypedSelector(state => state.app);
  const route = useRouter();

  useEffect(() => {
    if (!isAdmin && isLoading) route.push('/');
  }, [])

  const loginAction = async () => {
    try {
      const user = await axios.post('http://localhost:5000/auth/login', {email, password});
      route.push('/users/home')
    } catch (e) {
      console.log(e.message);
    }
  }

  if (!isAdmin && !isLoading) return (
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
  );
  else {
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
          {/*{users.map((user, index) => (*/}
          {/*  <li className="table-row" key={uuidv4() + index}>*/}
          {/*    <div className="col-1">{user.id}</div>*/}
          {/*    <div className="col">{user.name}</div>*/}
          {/*    <div className="col">{user.email}</div>*/}
          {/*    <div className="col">{user.isActive ? "Yes" : "No"}</div>*/}
          {/*    <div className="col">{user.banned ? "Yes" : "No"}</div>*/}
          {/*    <div className="col">{user.banReason}</div>*/}
          {/*    <div className="col">{user.resetLink}</div>*/}
          {/*    <div className="col">{user.confirmLink}</div>*/}
          {/*  </li>*/}
          {/*))}*/}
        </ul>
      </div>
    )
  }
};

export default UserPage;
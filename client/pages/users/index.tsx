import {useState} from "react";
import {Button} from "reactstrap";
import axios from "axios";
import {useRouter} from "next/router";

const UserPage = () => {
  const [email, setEmail] = useState<string>("")
  const [password, setPassword] = useState<string>("")
  const route = useRouter();

  const loginAction = async () => {
    try {
      const user = await axios.post('http://localhost:5000/auth/login', {email, password});
      localStorage.setItem('usersToken', user.data.accessToken);
      route.push('/users/home')
      console.log(user);
    } catch (e) {
      console.log(e.message);
    }
  }

  return (
    <div className="usersSections">
      <div className="formContainer">
        <span>Login</span>
        <input onChange={e => setEmail(e.target.value)} type="text"/>
        <span>Password</span>
        <input onChange={e => setPassword(e.target.value)} type="text"/>
        <Button onClick={loginAction}>Login</Button>
      </div>
    </div>
  );
};

export default UserPage;
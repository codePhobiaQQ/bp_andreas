import IRole from "../models/IRole";

export const isAdmin = (roles: IRole[]): boolean => {
  let result = false;
  roles.forEach(role => {
    if (role.name == "admin") {
      result = true;
    }
  })
  return result;
}

export const isSuperAdmin = (roles: IRole[]): boolean => {
  let result = false;
  roles.forEach(role => {
    if (role.name == "super-admin") {
      result = true;
    }
  })
  return result;
}


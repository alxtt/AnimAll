import React, {useContext} from 'react';
import {Link} from "react-router-dom";
import { useAuth0 } from "@auth0/auth0-react";
import CustomButton from "../button/CustomButton"
import Profile from "../../Profile";
import LogoutButton from "../../LogOutButton";
import LoginButton from "../../LoginButton";


const Navbar = () => {

    const { user, isAuthenticated, isLoading } = useAuth0();

    if (isAuthenticated) {
        return (
            <div className="navbar">
                <div className="logo"></div>
                <div className="navbar__links">
                    <Link to="/about">Homepage</Link>
                    <Link to="/posts">Dashboard</Link>
                </div>
            </div>
        );
    } else {
        return (
            <div className="navbar">
                <div className="logo"></div>
                <div className="navbar__links">
                    <Link to="/about">Homepage</Link>
                </div>
            </div>
        );
    }
};

export default Navbar;

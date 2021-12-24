import React, {useContext} from 'react';
import {Link} from "react-router-dom";
import CustomButton from "../button/CustomButton";

const Navbar = () => {

    return (
        <div className="navbar">
            <div className="logo"></div>
            <div className="navbar__links">
                <Link to="/about">Homepage</Link>
                <Link to="/posts">Dashboard</Link>
            </div>
        </div>
    );
};

export default Navbar;

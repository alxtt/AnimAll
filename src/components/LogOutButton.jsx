import React from "react";
import { useAuth0 } from "@auth0/auth0-react";
import MyButton from "./UI/button/MyButton";

const LogoutButton = () => {
    const { logout } = useAuth0();

    return (
        <MyButton onClick={() => logout({ returnTo: window.location.origin })}>
            Log Out
        </MyButton>
    );
};

export default LogoutButton;
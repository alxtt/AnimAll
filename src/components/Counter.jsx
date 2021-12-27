import React, {useState} from 'react';
import MyButton from "./UI/button/MyButton";
import {useAuth0} from "@auth0/auth0-react";

const Counter = function () {
    const [count, setCount] = useState(0)

    function increment() {
        setCount(count + 1)
    }

    const { user, isAuthenticated, isLoading } = useAuth0();

    return (
            isAuthenticated && (
                <div className="countr">
                    <h1>{count}</h1>
                    <MyButton onClick={increment}>LIKE</MyButton>
                </div>
            )
    )
}

export default Counter;

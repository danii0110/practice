import React, {useState} from "react";
import Toolbar from "./Toolbar";

function LandingPage(props) {
    const [isLoggedIn, setIsLoggedIn] = useState(false);

    const onClickLogin = () => {
        setIsLoggedIn(true);
    };

    const onClickLgout = () => {
        setIsLoggedIn(false);
    };

    return (
        <div>
            <Toolbar
                isLoggedIn={isLoggedIn}
                onClickLogin={onClickLogin}
                onClickLgout={onClickLgout}
            />
            <div style={{padding : 16}}>소플과 함께하는 리액트 공부!</div>
        </div>
    );
}

export default LandingPage;
import React from "react";
const styles = {
    wrapper: {
        padding: 16,
        display: "flex",
        flexDirection: "row",
        borderBottom: "1px solid grey",
    },
    gretting: {
        marginRight: 8,
    },
};

function Toolbar(props) {
    const {isLoggedIn, onClickLogin, onClickLgout} = props;

    return (
        <div style={styles.wrapper}>
            {isLoggedIn && <span style={styles.greeting}>환영합니다!</span>}

            {isLoggedIn ? (
                <button onClick={onClickLgout}로그아웃></button>
            ) : (
                <button onClick={onClickLogin}>로그인</button>
            )}
        </div>
    )
}

export default Toolbar;
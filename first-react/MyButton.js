function MyButton(props) {
    const [isClicked, setIsClicked] = React.useState(false);

    return React.createElement(
        'button',
        {onClick: () => setIsClicked(true)},
        isClicked ? 'Clicked!' : 'Click here!'
    )
}
const donContainer = document.querySelector('#root');
ReactoDOM.render(React.createElement(MyButton), domContainer);
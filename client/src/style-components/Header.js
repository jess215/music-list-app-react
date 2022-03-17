import {
    PRIMARY_COLOR,
    SECONDARY_COLOR,
    TERTIARY_COLOR,
    BUTTON_COLOR
} from './Styles'

const Header = (props) => {
    const getHeader = () => {
        if (props.as === 'h2') {
            return styles.h2;
        }
        return styles.h1
    }
    return <div style={getHeader()}>{props.text}</div>
}

const styles = {
    h1: {
        color: PRIMARY_COLOR,
        fontSize: '30px',
        fontWeight: 600,
        textAlign: 'center',
        paddingBottom: '15px'
    },

    h2: {
        color: SECONDARY_COLOR,
        fontSize: '20px',
        fontWeight: 600,
        textAlign: 'center'
    }
}

export default Header
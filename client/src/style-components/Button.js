import styled,{css} from 'styled-components'
import {
    BUTTON_COLOR,
    BACKGROUND_COLOR,
} from './Styles'

const Button = styled.button`
    padding: 5px 15px;
    border-radius: 15px;
    background-color: ${BUTTON_COLOR};
    color: ${BACKGROUND_COLOR};
    margin: 10px;

    &:hover{
        background-color: ${BACKGROUND_COLOR};
        color: ${BUTTON_COLOR};
        border-radius: 15px;
        border: 2px solid ${BUTTON_COLOR};
        margin: 10px;
    }
`

export default Button
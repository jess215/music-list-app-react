import styled,{css} from 'styled-components'
import {
    TEXT_COLOR
} from './Styles'

const Text = styled.p`
    color: ${TEXT_COLOR};
    text-align: center;

    ${(props) =>
        props.artist && css`
            font-style: italic;
        `
    }
`



export default Text
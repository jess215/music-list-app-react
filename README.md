# CREATE REACT MUSIC LIST APP USING CLASS COMPONENTS

## Create Rails Backend
**BONUS: Get set up in case I get there**

## Create React Folders and Files

### Functional Folder
### Class Folder

### Rails-BE Folder
**BONUS: Get files created in case I get there**

---

## State
### Functional (Hooks)
```javascript
// pass initial state to useState function
// multiple states and setters
const [state1, setState1 = useState(0)]
const [state2, setState2 = useState('yo')]

// update state1
...
setState1(1)
...
```

### Class Component
```javascript
constructor(props){
    super(props)
    // initial state here
    // one state object
    this.state={
        state1: 0,
        state2: 'yo',
    }
}

// update state1
...
this.setState({
    state1:1
})
...
```
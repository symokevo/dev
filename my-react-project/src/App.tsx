// import reference to the ItemList component
import { ItemsListComponent } from './components/ItemsList.components'
import { ItemInterface } from './models/items/Item.interface';

// mock data
const items: ItemInterface[] = [{
  id:1,
  name: 'Item 1',
  selected: false
}, {
  id: 2,
  name: 'Item 2',
  selected: false
}, {
  id: 3,
  name: 'Item 3',
  selected: false
}]

// component
function App() {
  return (
    <div>
      <ItemsListComponent items={items}/>
    </div>
  );
}

export default App;
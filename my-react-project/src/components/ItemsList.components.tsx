// Using const of type React.FC
import React from 'react';
import { ItemInterface } from '../models/items/Item.interface';

// /*
export const ItemsListComponent: React.FC<{
    items: ItemInterface[]
}> = (props) => {
    
    const handleItemClick = (item: ItemInterface) => {
        item.selected = !item.selected
        console.log('handleItemClick', item.id, item.selected)
    }

    return (
        <div>
            <h3>Items:</h3>
            <ul>
                {
                    props.items.map((item, index) => {
                        return (
                            <li key={index} onClick={() => handleItemClick(item)}>
                                {item.name} [{ String(item.selected)}] {}
                                </li>)
                    } 
                    )
                }
            </ul>
        </div>
    )
}
// */

// the following code is another example that utilizes class syntax to achieve the above functionality

/*
// import React from 'react'

export class ItemsListComponent extends React.Component<{
    items: ItemInterface[]
}> {
    constructor(props: {
        items: ItemInterface[]
   }) {
    super(props)
   }

   handleItemClick(item: ItemInterface) {
    item.selected = !item.selected
    console.log('handleItemClick', item.id, item.selected)
   }

   render(): React.ReactNode {
    const { items } = this.props
    return ( 
        <div>
            <h3>Items:</h3>
            <ul>
                {
                    items.map((item: any, index: number) => <li key={index} onClick={
                        () => this.handleItemClick
                    }>{item.name}</li>)
                }
            </ul>
        </div>
    )
    }
}

*/
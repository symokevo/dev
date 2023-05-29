// Using const of type React.FC
import React from 'react';

export const ItemsListComponent: React.FC<{
    items: any[]
}> = (props) => {

    return (
        <div>
            <h3>Items:</h3>
            <ul>
                {
                    props.items.map((item, index) => <li key={index}>{item.name}</li>)
                }
            </ul>
        </div>
    )
}

// the following code is another example that utilizes class syntax to achieve the above functionality

/*
import React from 'react'

export class ItemsListComponent extends React.Component<{
    items: any[]
}> {
    constructor(props: {
        items: any[]
   }) {
    super(props)
   }

   render(): React.ReactNode {
    const { items } = this.props
    return <div>
        <h3>Items:</h3>
        <ul>
            {
                items.map((item: any, index: number) => <li key={index}>{item.name}</li>)
            }
        </ul>
        </div>
    }
}

*/
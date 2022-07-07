//In an `.rsh` file Create a rudimentary Reach Application with three participants, "Creator", "Bidder", and "Buyer"

"reach 0.1";

/*_Define a participant interact interface that will be shared between Creator, Bidder, and Buyer. Provide a method 
"seePrice", which takes no input and outputs an integer and "getDescription" which takes no input and outputs a byte._ */

const Player = {
    seePrice: ([],UInt),
    getDescription: ([], Byte), //output byte?
};

export const main = Reach.App(() => {
    const Creator = Participant('Creator', {
        //Creator's interact interface here
    });
    const Bidder = Participant('Bidder', {
        //Bidder's interact interface here
    });
    const Buyer = Participant('Buyer', {
        //Buyer's Interact interface here
    });
    init();

/* Write an interact expression that binds the value of `seePrice` for the `Bidder` participant. 
Assign the expression to a `const` "price" */
Bidder.only(()=> {
    const price = declassify(interact.seePrice);
});
/* Write an interact expression that binds the value of `getDescription` for the `Buyer` participant. 
Assign the expression to a `const` "description" */
Buyer.only(()=>{ 
    const description = declassify(interact.getDescription);
});
//Add the declassify primitive to all the `interact` expressions above.
});
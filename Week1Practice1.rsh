//In an `.rsh` file Create a rudimentary Reach Application with two participants, "Pat" and "Vanna"

'reach 0.1';

//Define a participant interact interface that will be shared between Pat and Vanna.
const Player = {
    //Provide two methods: getChallenge and seeResult
    getChallenge: ([], UInt), //takes no input and outputs an integer
    seeResult:([UInt], Null), //takes an integer input and has no output
};

export const main = Reach.App(() => {
    const Pat = Participant('Pat', {
        //Pat interact interface

    });
    const Vanna = Participant('Vanna',{
        //Vanna Interact Interface
    });
    init();


//Create PARTICIPANT.only code blocks for Pat and Vanna.

/* Write an interact expression that binds the value to the result of interacting with Pat through the 
`getChallenge` method. Assign the expression to a `const` "challengePat" */
Pat.only (()=> {
    const challengePat = declassify(interact.getChallenge);
});
Pat.publish(getChallenge);
/* Write an interact expression that binds the resulting value of interacting with Vanna through the 
`getChallenge` method. Assign the expression to a `const` "challengeVanna" */
Vanna.only(()=>{
    const challengeVanna = declassify(interact.getChallenge);
});
Vanna.publish(getChallenge);

});
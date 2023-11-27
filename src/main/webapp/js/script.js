/**
 * 
 */

    function clickDisplay() {
        let numbers = document.getElementsByName("dentaku");
        console.log(numbers);
        for (let i = 0; i < numbers.length; i++) {
            console.log(numbers.item(i).value);
            let array = new Array(numbers.item(i).value);
            console.log(array);
        }
    }

    function clear_display() {
        if (document.getElementsByName("clear")[0].value == "C") {
            document.getElementsByName("display")[0].value = "";
        }
    }
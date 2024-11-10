// Constants

const disclaimerName = "acceptedDisclaimer";

const modalDOM = "#modal-disclaimer";
const understandDOM = "#disclaimer-understood";

const acceptedReference = "Yes";

// When the page is loaded
$( document ).ready(function() {

    // Check for present cookies
    let accepted = localStorage.getItem(disclaimerName);

    // If not accepted show the modal
    if (accepted !== acceptedReference) {

        $(modalDOM).modal("show");

    }

    // Create a hook on the understood button
    $(understandDOM).click(function() {

        // Store the message
        localStorage.setItem(disclaimerName, acceptedReference);

        // Dismiss the modal
        $(modalDOM).modal("hide");

    });

});
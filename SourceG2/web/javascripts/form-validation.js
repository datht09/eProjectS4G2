$(document).ready(function($) {

    // hide messages 
    $(".error").hide();
    $(".success").hide();

    $('#loginForm input').click(function(e) {
        $(".error").fadeOut();
    });

    // on login form submit...
    $("#loginForm #submit").click(function() {
        $(".error").hide();

        //required:

        //name
        var name = $("input#loginName").val();
        if (name == "") {
            $('#lName').fadeIn('slow');
            $("input#loginName").focus();
            return false;
        }
        //password
        var pass = $("input#loginPass").val();
        if (pass == "") {
            $('#lPass').fadeIn('slow');
            $("input#loginPass").focus();
            return false;
        }

    });




    // on register form submit...
    $("#registerForm #submit").click(function() {
        $(".error").hide();

        //required:

        //name
        var name = $("input#registerUsername").val();
        if (name == "") {
            $('#rUserName').fadeIn('slow');
            $("input#registerUsername").focus();
            return false;
        }
        //password
        var pass = $("input#registerPass").val();
        if (pass == "") {
            $('#rPass').fadeIn('slow');
            $("input#registerPass").focus();
            return false;
        }
        //confirm password
        var cPass = $("input#registerConfirmPass").val();
        if (cPass != pass) {
            $('#rConfirmPass').fadeIn('slow');
            $("input#registerConfirmPass").focus();
            return false;
        }
        //department
        var ddl = document.getElementById("registerDepartment");
        var selectedValue = ddl.options[ddl.selectedIndex].value;
        if (selectedValue == "") {
            $('#rDepartment').fadeIn('slow');
            $("input#registerDepartment").focus();
            return false;
        }
        //full name
        var fullName = $("input#registerFullName").val();
        if (fullName == "") {
            $('#rFullName').fadeIn('slow');
            $("input#registerFullName").focus();
            return false;
        }
        //email (check if entered anything)
        var email = $("input#registerEmail").val();
        //email (check if entered anything)
        if (email == "") {
            $('#rEmail').fadeIn('slow');
            $("input#registerEmail").focus();
            return false;
        }

        //email (check if email entered is valid)

        if (email !== "") {  // If something was entered
            if (!isValidEmailAddress(email)) {
                $('#rEmail').fadeIn('slow'); //error message
                $("input#registerEmail").focus();   //focus on email field
                return false;
            }
        }

        function isValidEmailAddress(emailAddress) {
            var pattern = new RegExp(/^(("[\w-+\s]+")|([\w-+]+(?:\.[\w-+]+)*)|("[\w-+\s]+")([\w-+]+(?:\.[\w-+]+)*))(@((?:[\w-+]+\.)*\w[\w-+]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][\d]\.|1[\d]{2}\.|[\d]{1,2}\.))((25[0-5]|2[0-4][\d]|1[\d]{2}|[\d]{1,2})\.){2}(25[0-5]|2[0-4][\d]|1[\d]{2}|[\d]{1,2})\]?$)/i);
            return pattern.test(emailAddress);
        }
        ;

        //address
        var add = $("input#registerAddress").val();
        if (add == "") {
            $('#rAddress').fadeIn('slow');
            $("input#registerAddress").focus();
            return false;
        }

        //phone
        var phone = $("input#registerPhone").val();
        if (phone == "") {
            $('#rPhone').fadeIn('slow');
            $("input#registerPhone").focus();
            return false;
        }

        //phone (check if phone entered is not number)
        if (phone !== "") {  // If something was entered
            if (!isValidPhoneNumber(phone)) {
                $('#rPhone').fadeIn('slow'); //error message
                $("input#registerPhone").focus();   //focus on email field
                return false;
            }
        }
        function isValidPhoneNumber(phoneNumber) {
            var pattern = new RegExp("^[0-9]{10,11}");
            return pattern.test(phoneNumber);
        }
        ;


    });


    // on new complaint form submit...
    $("#complaintForm #submit").click(function() {
        $(".error").hide();

        //required:

        //subject
        var subject = $("input#subject").val();
        if (subject == "") {
            $('#cSubject').fadeIn('slow');
            $("input#subject").focus();
            return false;
        }
        
        //error
        var ddl = document.getElementById("error");
        var selectedValue = ddl.options[ddl.selectedIndex].value;
        if (selectedValue == "") {
            $('#cError').fadeIn('slow');
            $("input#error").focus();
            return false;
        }
        
        // message
        var comments = $("#message").val();
        if (comments == "") {
            $('#cMessage').fadeIn('slow');
            $("input#message").focus();
            return false;
        }

        

    });


    // on success...
    function success() {
        $("#success").fadeIn();
        $("#contactForm").fadeOut();
    }

    return false;
});


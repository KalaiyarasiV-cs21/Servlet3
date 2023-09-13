<!DOCTYPE html>
<html>
<head>
    <title>Calculate Square Root</title>
    <!-- Include jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
    <h1>Calculate Square Root</h1>
    <form id="numberForm">
        <label for="number">Enter a Number:</label>
        <input type="text" id="number" name="number" required><br>

        <input type="submit" value="Calculate">
    </form>

    <div id="result">The result will be displayed here without page reload</div>


    <script>
        $(document).ready(function() {
            
            $("#numberForm").submit(function(event) {
                event.preventDefault(); 

                       var number = $("#number").val();

                       $.ajax({
                    type: "POST",
                    url: "add.do",
                    data: { number: number },
                    success: function(response) {
       
                        $("#result").html(response);
                    }
                });
            });
        });
    </script>
</body>
</html>



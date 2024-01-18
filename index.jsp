
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simple Calculator in JSP</title>
    <style>
        body {
            text-align: center;
        }
        .calculator {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 10px;
            margin-top: 10px;
        }
        .calculator button {
            width: 50%;
            padding: 15px;
            font-size: 16px;
        }
        input[type="text"] {
            width: 40%;
            margin: 10px;
            padding: 10px;
            font-size: 18px;
        }
    </style>
</head>
<body>

    <form action="processCalculator.jsp" method="post">
        <input type="text" name="calcInput" id="calcInput" readonly>
        
        <div class="calculator">
            <button type="button" onclick="appendToInput('7')">7</button>
            <button type="button" onclick="appendToInput('8')">8</button>
            <button type="button" onclick="appendToInput('9')">9</button>
            <button type="button" onclick="appendToInput('/')">/</button>
            <button type="button" onclick="appendToInput('4')">4</button>
            <button type="button" onclick="appendToInput('5')">5</button>
            <button type="button" onclick="appendToInput('6')">6</button>
            <button type="button" onclick="appendToInput('*')">*</button>
            <button type="button" onclick="appendToInput('1')">1</button>
            <button type="button" onclick="appendToInput('2')">2</button>
            <button type="button" onclick="appendToInput('3')">3</button>
            <button type="button" onclick="appendToInput('-')">-</button>
            <button type="button" onclick="appendToInput('0')">0</button>
            <button type="button" onclick="appendToInput('.')">.</button>
            <button type="button" onclick="calculate()">=</button>
            <button type="button" onclick="appendToInput('+')">+</button>
        </div>

    </form>

    <script>
        function appendToInput(value) {
            var calcInput = document.getElementById("calcInput");
            calcInput.value += value;
        }

        function calculate() {
            var calcInput = document.getElementById("calcInput");
            try {
                calcInput.value = eval(calcInput.value);
            } catch (error) {
                calcInput.value = "Error";
            }
        }
    </script>

</body>
</html>

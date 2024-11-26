document.getElementById('calculateButton').addEventListener('click', function(event) {
    event.preventDefault(); // Prevent immediate navigation

    const weight = document.getElementById('weight').value;
    const heightCm = document.getElementById('heightCm').value;
    const heightFt = document.getElementById('heightFt').value;

    let heightMeters;

    // Convert height input to meters
    if (heightCm) {
        heightMeters = heightCm / 100;
    } else if (heightFt) {
        heightMeters = heightFt * 0.3048; // Convert feet to meters
    } else {
        alert('Please enter your height in either cm or feet.');
        return;
    }

    if (!weight || !heightMeters) {
        alert('Please fill in all required fields.');
        return;
    }

    const bmi = (weight / (heightMeters * heightMeters)).toFixed(2);

    // Store BMI in localStorage
    localStorage.setItem('bmi', bmi);

    // Redirect to result page
    window.location.href = "result.html";
});

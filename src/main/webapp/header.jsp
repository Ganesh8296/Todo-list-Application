<!-- header.jsp -->

<!-- Loader HTML -->
<div id="loader"></div>

<!-- Loader CSS -->
<style>
    /* Full-Screen Loader */
    #loader {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: #f3f3f3;
        display: flex;
        justify-content: center;
        align-items: center;
        z-index: 9999;
    }

    /* Loader Animation (Simple Spinning Circle) */
    #loader:after {
        content: "";
        width: 50px;
        height: 50px;
        border: 5px solid #ccc;
        border-top: 5px solid #3498db;
        border-radius: 50%;
        animation: spin 1s linear infinite;
    }

    /* Keyframes for Spinning Animation */
    @keyframes spin {
        0% {
            transform: rotate(0deg);
        }
        100% {
            transform: rotate(360deg);
        }
    }
</style>

<!-- JavaScript to Handle Loader -->
<script>
    // Display the loader when navigating to a new page
    document.addEventListener("DOMContentLoaded", function () {
        const loader = document.getElementById("loader");

        // Show the loader initially
        loader.style.display = "flex";

        // Hide the loader once the page has fully loaded
        window.addEventListener("load", function () {
            loader.style.display = "none";
        });
    });

    // Show the loader before leaving the current page
    window.addEventListener("beforeunload", function () {
        document.getElementById("loader").style.display = "flex";
    });
</script>

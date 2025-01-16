<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="day.aspx.cs" Inherits="WebApplication1.Assignment_1.assignment2.day" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calendar Example</title>
   <style>
    /* Body styling */
    body {
        background-color: #000000; /* Black background */
        font-family: Arial, sans-serif;
        color: #ffffff; /* White text */
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        min-height: 100vh;
    }

    /* Container for user details */
    .text-container {
        text-align: center;
        margin-bottom: 20px;
        padding: 20px;
        background-color: #001f3f; /* Dark blue background */
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
        width: 90%;
        max-width: 400px;
    }

    .text-container p {
        margin: 0;
        font-size: 1.2rem;
        color: #ffffff; /* White text */
    }

    /* Calendar container */
    .calendar-container {
        text-align: center;
        margin: 20px 0;
        padding: 20px;
        background-color: white; /* Dark blue background */
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
        width: 90%;
        max-width: 400px;
    }

    /* Styling for the calendar */
    .calendar-container table {
        width: 100%;
        border-collapse: collapse;
        color: #ffffff; /* White font for text */
    }

    .calendar-container th {
        background-color: #001f3f; /* Dark blue for headers */
        color: #87CEEB; /* Light blue for header text */
        padding: 10px;
    }

    .calendar-container td {
        text-align: center;
        padding: 10px;
        cursor: pointer;
    }

    .calendar-container td a {
        text-decoration: none;
        color: #ffffff; /* White font for dates */
    }

    .calendar-container td a:hover {
        color: #87CEEB; /* Light blue on hover */
    }

    .calendar-container .selected {
        background-color: #87CEEB; /* Light blue for selected date */
        color: #000000; /* Black text for selected date */
        font-weight: bold;
    }

    /* Labels for current day and selected date */
    .labels {
        margin-top: 20px;
        font-size: 1.1rem;
        color: #87CEEB; /* Light blue for labels */
        text-align: center;
    }

    .labels p {
        margin: 10px 0;
    }

    /* Responsive adjustments */
    @media (max-width: 600px) {
        .text-container,
        .calendar-container {
            padding: 15px;
        }

        .text-container p,
        .labels p {
            font-size: 1rem;
        }
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- User Details -->
        <div class="text-container">
            <p>Name: Kashish Koshiya<br />Enrollment No: 22SOECE11031</p>
        </div>
        <!-- Calendar -->
        <div class="calendar-container">
            <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
        </div>
        <!-- Labels -->
        <div class="labels">
            <p>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </p>
            <p>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </p>
        </div>
    </form>
</body>
</html>

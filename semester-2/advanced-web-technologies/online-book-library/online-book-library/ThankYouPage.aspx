<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ThankYouPage.aspx.cs" Inherits="ThankYouPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Thank you!</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="thankyou-page">
            <div class="_header">
                <div class="logo">
                    <img src="https://codexcourier.com/images/banner-logo.png" alt=""/>
                </div>
                <h1>Thank You!</h1>
            </div>
            <div class="_body">
                <div class="_box">
                    <h2>
                        <strong>Please check your email</strong> for further instructions on how to complete your account setup.
                    </h2>
                    <p>
                        Thanks a bunch for filling that out. It means a lot to us, just like you do! We really appreciate you giving us a moment of your time today. Thanks for being you.
                    </p>
                    <br />
                    <b>Book Name: <asp:Label runat="server" ID="bookName" Text=""></asp:Label>
                        <br />

                        Book Id: <asp:Label runat="server" ID="bookId" Text=""></asp:Label>
                        <br />
                        Author Name: <asp:Label runat="server" ID="authorName" Text=""></asp:Label>
                        <br />
                        Return Date: <asp:Label runat="server" ID="returnDate" Text="Date"></asp:Label>
                        <br />
                    </b>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

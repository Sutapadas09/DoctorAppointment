
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .form-hd{
                text-align: center;
                color: blue;
                font-weight: bolder;
                font-size: 35px;
                text-decoration: underline;
                margin:10px;
                font-family: italic;
            }
            label{
                font-weight: bolder;
                
            }
        </style>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <div class="container" style="width:30rem; margin-top: 70px;">
            <div class="form-hd">
                Patient Registration Form
            </div>
            <form>
                <div class="form-group">
                    <label for="exampleFormControlInput1">Patient Name </label>
                    <input type="name" class="form-control" id="exampleFormControlInput1" placeholder="name with surname">
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput1">Patient Phone Number </label>
                    <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="+91**********">
                    <label for="exampleFormControlSelect1">Choose Doctor</label>
                    <select class="form-control" id="exampleFormControlSelect1">
                        <option>Dr.Sumit Bhattacharjee</option>
                        <option>Dr.Papiya Jana</option>
                        <option>Dr.Bibek Mukharjee</option>
                        <option>Dr.Shreya Ghosh</option>
                        <option>Dr.Avijit Ghoshal</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput1">Date & Time </label>
                    <input type="datetime-local" class="form-control"  requied aria-describedby="addon-wrapping">
                </div>
                <div class="form-group">
                    <label for="exampleFormControlTextarea1">Purpose For Visiting</label>
                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                </div>
                <div style="text-align:center;">
                   <a  type="button" class="btn btn-primary"href="welcome_clinic.jsp">Submit</a>
                </div>
            </form>
        </div>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>

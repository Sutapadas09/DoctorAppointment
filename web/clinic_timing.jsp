<%-- 
    Document   : clinic_timing
    Created on : 14 Jan, 2021, 10:55:06 PM
    Author     : Sutapa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <script>
            
                $(document).ready(function () {
          //@naresh action dynamic childs
          var next = 0;
          $("#add-more").click(function(e){
              e.preventDefault();
              var addto = "#field" + next;
              var addRemove = "#field" + (next);
              next = next + 1;
              var newIn = ' <div id="field'+ next +'" name="field'+ next +'"><!-- Text input--><div class="form-group"> <label class="col-md-4 control-label" for="action_id">Select Day</label> <div class="col-md-5"><select id="action_id" class="form-control input-md"><option selected>Choose...</option><option>Sunday</option><option>Monday</option><option>Tuesday</option><option>Wednesday</option><option>Thursday</option><option>Friday</option><option>Saturday</option></select> </div></div><br><br> <!-- Text input--><div class="form-group"> <label class="col-md-4 control-label" for="action_name">Select Time</label> <div class="col-md-2"> <input id="action_name" name="action_name" type="text" placeholder="" class="form-control input-md"> <center> to  </center><input id="action_name" name="Select_Time" type="text" placeholder="" class="form-control input-md"> </div></div><br><br><!-- File Button --> ';
              var newInput = $(newIn);
              var removeBtn = '<button id="remove' + (next - 1) + '" class="btn btn-danger remove-me" >Remove</button></div></div><div id="field">';
              var removeButton = $(removeBtn);
              $(addto).after(newInput);
              $(addRemove).after(removeButton);
              $("#field" + next).attr('data-source',$(addto).attr('data-source'));
              $("#count").val(next);  

                  $('.remove-me').click(function(e){
                      e.preventDefault();
                      var fieldNum = this.id.charAt(this.id.length-1);
                      var fieldID = "#field" + fieldNum;
                      $(this).remove();
                      $(fieldID).remove();
                  });
          });

      });
       </script>
    </head>
    <body>
        
                    <div class="col-xs-12">
                       <div class="col-md-12" >
                           
                           <div id="field">
                           <div id="field0">
           <!-- Text input-->
           <div class="form-group">
             <label class="col-md-4 control-label" for="action_id">Select Day</label>  
             <div class="col-md-5">
           
                <select id="action_id" class="form-control input-md"> 
                <option selected>Choose...</option>
                 <option>Sunday</option>
                <option>Monday</option>
                <option>Tuesday</option>
                <option>Wednesday</option>
                <option>Thursday</option>
                <option>Friday</option>
                <option>Saturday</option>
              
     </select>
               
             </div>
             
           </div>
           <br><br>
           <!-- Text input-->
           <div class="form-group">
               <label class="col-md-4 control-label" for="action_name">Select Time</label>  
             <div class="col-md-2">
                 <input id="action_name" name="Select_Time" type="text" placeholder="" class="form-control input-md"><center> to  </center>
              
             <input id="action_name" name="Select_Time" type="text" placeholder="" class="form-control input-md"> 
             
             </div>
           </div>
           <br><br>
                  <!-- File Button --> 
           

           </div>
           </div>
           <!-- Button -->
           <div class="form-group">
             <div class="col-md-4">
               <button id="add-more" name="add-more" class="btn btn-primary">Add More</button>
             </div>
           </div>
           <br><br>

                       </div>
                   </div>
             
    </body>
</html>

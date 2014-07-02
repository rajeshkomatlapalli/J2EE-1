<%-- 
    Document   : editbook
    Created on : Jun 6, 2014, 10:04:20 PM
    Author     : Vladimir
--%>

<!-- custom edit book css -->
<link type="text/css" rel="stylesheet" href="<c:url value="/assets/css/editbook.css" />" />

<!-- Datatable css -->
<link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.0-beta.1/css/jquery.dataTables.css">

<!-- jQuery plugin -->
<script type="text/javascript" src="/book_shop/assets/jquery/js/jquery-1.10.2.js" ></script>

<!-- custom edit book page js -->
<script type="text/javascript" src="<c:url value="/assets/js/polyfill.js" />" ></script>
<script type="text/javascript" src="<c:url value="/assets/js/editbook.js" />" ></script>

<!-- Datatable js -->
<script type="text/javascript" language="javascript" src="//cdn.datatables.net/1.10.0/js/jquery.dataTables.js"></script>

<div id="centerColumn">
                
    <br />
    <h1>Edit Book</h1><br />
    
    <!-- Add book -->
    <div id="add-book">
        <form id="add_book_form" name="post_book_form" action="#">
            Add Book  <input type="text" name="book_title" id="book_title" maxlength="50" value="">&nbsp;
                            <input type="button" name="submit_add_book" id="submit_add_book" value="Submit">
        </form>
    </div>
    <br />
    
    <!-- adding new book -->
    <div id="ajax_add_book_response_success" class="alert alert-success"></div>
    <div id="ajax_add_book_response_error" class="alert alert-danger"></div>
    
    <!-- Update book -->
    <div id="ajax_update_book_response_success" class="alert alert-success"></div>
    <div id="ajax_update_book_response_error" class="alert alert-danger"></div>
    
    <!-- Delete book -->
    <div id="ajax_delete_book_response_success" class="alert alert-success"></div>
    <div id="ajax_delete_book_response_error" class="alert alert-danger"></div>
    <br />
    
    <!-- jQuery datatables -->
    <div id="book-list">
        <table id="book-list-table" class="display">
            <thead>
                <tr>
                    <th>Expand</th>
                    <th>Title</th>
                    <th>Author</th>
                    <th>Quantity</th>
                    <th>Category</th>
                    <th>Price</th>
                    <th>Description</th>
                    <th>Last Update</th>
                    <th>Update</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tbody></tbody>
            <tfoot>
                <tr>
                    <th>Expand</th>
                    <th>Title</th>
                    <th>Author</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Category</th>
                    <th>Description</th>
                    <th>Last Update</th>
                    <th>Update</th>
                    <th>Delete</th>
                </tr>
            </tfoot>
        </table>
    </div>
       

    <!-- Update Book Modal -->
    <div class="modal fade" id="update-book-modal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title" id="modalLabel">Book Edit</h4>
          </div>
          <div class="modal-body">
              <h5>Edit book information:</h5><br/>
            <form id="update_book_form" method="post" action="#">
                Title          <input type="text" value="" name="book_title"><br>
                Author         <input type="text" value="" name="book_author"><br>
                Quantity       <input type="text" value="" name="book_quantity"><br>
                Category       <input type="text" value="" name="book_category_name"><br>
                Price          <input type="text" value="" name="book_price"><br>
                Description    <input type="text" value="" name="book_description"><br>
                Last Update    <input type="text" value="" name="book_last_update" readonly>
                               <input type="hidden" value="" name="book_id">
                         
            </form>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary" id="update_book_form_submit">Save changes</button>
          </div>
        </div>
      </div>
    </div>


</div>
            
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="<c:url value="/assets/bootstrap/js/bootstrap.min.js" />"></script>

<!-- Bootbox alerts plugin plugin -->
<script src="<c:url value="/assets/bootbox/bootbox.min.js" />"></script>

<!-- Include all compiled plugins (below), or include individual files as needed -->
<link href="<c:url value="/assets/bootstrap/css/bootstrap.min.css" />">
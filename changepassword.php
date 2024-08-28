
<!-- View Modal -->
  <div class="modal fade" id="changepassmodal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title"></h4>
        </div>
        <form class="form" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="POST">
        <div class="modal-body" id="modal-body">
          <div class="container-fluid">

          	<div class="form-group input-group">
          		<span class="input-group-addon" style="width: 200px;">Enter Old Password:</span>
          		<input type="password" style="width: 350px;" class="form-control" id="oldpass" name="oldpass" required>
          	</div>
          	<div class="form-group input-group">
          		<span class="input-group-addon" style="width: 200px;">Enter New Password:</span>
          		<input type="password" style="width: 350px;" class="form-control" id="newpass" name="newpass">
          	</div>
            <div class="form-group input-group">
              <span class="input-group-addon" style="width: 200px;">Confirm Password:</span>
              <input type="password" style="width: 350px;" class="form-control" id="confirm" name="confirm" required>
            </div>
          	
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
          <button type="submit" class="btn btn-success" name="change">OK</button>
        </div>
        </form>
      </div>
      
    </div>
  </div>
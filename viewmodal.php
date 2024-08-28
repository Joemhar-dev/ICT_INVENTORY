
<!-- View Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title"></h4>
        </div>
        <div class="modal-body" id="modal-body">
          <div class="container-fluid">
          <form class="form" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="POST">
          	<div class="form-group input-group">
          		<span class="input-group-addon" style="width: 200px;">Item No.:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="item" disabled>
          	</div>
          	<div class="form-group input-group">
          		<span class="input-group-addon" style="width: 200px;">Type of Equipment:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="type" disabled>
          	</div>
          	<div class="form-group input-group">
          		<span class="input-group-addon" style="width: 200px;">Serial Number:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="serial" disabled>
          	</div>
          	<div class="form-group input-group">
          		<span class="input-group-addon" style="width: 200px;">Type of Acquisition:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="acquisition" disabled>
          	</div>
          	<div class="form-group input-group">
          		<span class="input-group-addon" style="width: 200px;">Processor:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="processor" disabled>
          	</div>
          	<div class="form-group input-group">
          		<span class="input-group-addon" style="width: 200px;">Memory Size:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="memory" disabled>
          	</div>
          	<div class="form-group input-group">
          		<span class="input-group-addon" style="width: 200px;">Hard Disk Size:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="hard_disk" disabled>
          	</div>
          	<div class="form-group input-group">
          		<span class="input-group-addon" style="width: 200px;">Licensed Operating System:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="los" disabled>
          	</div>
          	<div class="form-group input-group">
          		<span class="input-group-addon" style="width: 200px;">Licensed MS Office:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="mso" disabled>
          	</div>
          	<div class="form-group input-group">
          		<span class="input-group-addon" style="width: 200px;">Other Installed Software:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="ois" disabled>
          	</div>
          	<div class="form-group input-group">
          		<span class="input-group-addon" style="width: 200px;">ARE Number:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="are" disabled>
          	</div>
          	<div class="form-group input-group">
          		<span class="input-group-addon" style="width: 200px;">Property Number:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="property" disabled>
          	</div>
          	<div class="form-group input-group">
          		<span class="input-group-addon" style="width: 200px;">Model:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="model" disabled>
          	</div>
          	<div class="form-group input-group">
          		<span class="input-group-addon" style="width: 200px;">Brand Name:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="brand" disabled>
          	</div>
          	<div class="form-group input-group">
          		<span class="input-group-addon" style="width: 200px;">Unit Value/Cost:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="cost" disabled>
          	</div>
          	<div class="form-group input-group">
          		<span class="input-group-addon" style="width: 200px;">End User:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="user" disabled>
          	</div>
          	<div class="form-group input-group">
          		<span class="input-group-addon" style="width: 200px;">Designation:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="designation" disabled>
          	</div>
          	<div class="form-group input-group">
          		<span class="input-group-addon" style="width: 200px;">Section/Division:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="division" disabled>
          	</div>
          	<div class="form-group input-group">
          		<span class="input-group-addon" style="width: 200px;">District Office:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="district" disabled>
          	</div>
          	<div class="form-group input-group">
          		<span class="input-group-addon" style="width: 200px;">Region:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="region" disabled>
          	</div>
          	<div class="form-group input-group">
          		<span class="input-group-addon" style="width: 200px;">Asset Owner:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="owner" disabled>
          	</div>
          	<div class="form-group input-group">
          		<span class="input-group-addon" style="width: 200px;">Date Received:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="date_received" disabled>
          	</div>
          	<div class="form-group input-group">
          		<span class="input-group-addon" style="width: 200px;">Received From:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="sender" disabled>
          	</div>
          	<div class="form-group input-group">
          		<span class="input-group-addon" style="width: 200px;">Supplier:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="supplier" disabled>
          	</div>
          	<div class="form-group input-group">
          		<span class="input-group-addon" style="width: 200px;">Date of Acquisition:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="acquisition_date" disabled>
          	</div>
          </form>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
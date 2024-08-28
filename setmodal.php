
<!-- View Modal -->
  <div class="modal fade" id="setmodal" role="dialog">
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
          		<span class="input-group-addon" style="width: 200px;">Item No.:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="item" name="item" required>
          	</div>
          	<div class="form-group input-group" style="display: none;">
          		<span class="input-group-addon" style="width: 200px;">Type of Equipment:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="type" name="type">
          	</div>
          	<div class="form-group input-group" style="display: none;">
          		<span class="input-group-addon" style="width: 200px;">Serial Number:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="serial" name="serial">
          	</div>
          	<div class="form-group input-group" style="display: none;">
          		<span class="input-group-addon" style="width: 200px;">Type of Acquisition:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="acquisition" name="acquisition">
          	</div>
          	<div class="form-group input-group" style="display: none;">
          		<span class="input-group-addon" style="width: 200px;">Processor:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="processor" name="processor">
          	</div>
          	<div class="form-group input-group" style="display: none;">
          		<span class="input-group-addon" style="width: 200px;">Memory Size:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="memory" name="memory">
          	</div>
          	<div class="form-group input-group" style="display: none;">
          		<span class="input-group-addon" style="width: 200px;">Hard Disk Size:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="hard_disk" name="hard_disk">
          	</div>
          	<div class="form-group input-group" style="display: none;">
          		<span class="input-group-addon" style="width: 200px;">Licensed Operating System:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="los" name="los">
          	</div>
          	<div class="form-group input-group" style="display: none;">
          		<span class="input-group-addon" style="width: 200px;">Licensed MS Office:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="mso" name="mso">
          	</div>
          	<div class="form-group input-group" style="display: none;">
          		<span class="input-group-addon" style="width: 200px;">Other Installed Software:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="ois" name="ois">
          	</div>
          	<div class="form-group input-group" style="display: none;">
          		<span class="input-group-addon" style="width: 200px;">ARE Number:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="are" name="are">
          	</div>
          	<div class="form-group input-group" style="display: none;">
          		<span class="input-group-addon" style="width: 200px;">Property Number:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="property" name="property">
          	</div>
          	<div class="form-group input-group" style="display: none;">
          		<span class="input-group-addon" style="width: 200px;">Model:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="model" name="model">
          	</div>
          	<div class="form-group input-group" style="display: none;">
          		<span class="input-group-addon" style="width: 200px;">Brand Name:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="brand" name="brand">
          	</div>
          	<div class="form-group input-group" style="display: none;">
          		<span class="input-group-addon" style="width: 200px;">Unit Value/Cost:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="cost" name="cost">
          	</div>
          	<div class="form-group input-group">
          		<span class="input-group-addon" style="width: 200px;">End User:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="user" name="user" required>
          	</div>
          	<div class="form-group input-group">
          		<span class="input-group-addon" style="width: 200px;">Designation:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="designation" name="designation">
          	</div>
            <div class="form-group input-group">
              <span class="input-group-addon" style="width: 200px;">Asset Owner:</span>
              <input type="text" style="width: 350px;" class="form-control" id="owner" name="owner" required>
            </div>
          	<div class="form-group input-group">
          		<span class="input-group-addon" style="width: 200px;">Section/Division:</span>
              <select style="width: 350px;" class="form-control" id="division" name="division" required>
              <option style="display: none;"></option>
              <option>Office of the District Engineer</option>
              <option>Office of the Assistant District Engineer</option>
              <option>Planning and Design Section</option>
              <option>Contruction Section</option>
              <option>Maintenance Section</option>
              <option>Quality Assurance Section</option>
              <option>Administrative Section</option>
              <option>Finance Section</option>    
            </select>
          	</div>
          	<div class="form-group input-group">
          		<span class="input-group-addon" style="width: 200px;">Region:</span>
              <select style="width: 350px;" class="form-control" id="region" name="region" required>
              <option style="display: none;"></option>
              <option>National</option>
              <option>NCR</option>
              <option>CAR</option>
              <option>Region I</option>
              <option>Region II</option>
              <option>Region III</option>
              <option>Region IV-A</option>
              <option>Region IV-B</option>
              <option>Region V</option>
              <option>Region VI</option>
              <option>Region VII</option>
              <option>Region VIII</option>
              <option>Region IX</option>
              <option>Region X</option>
              <option>Region XI</option>
              <option>Region XII</option>
              <option>Region XIII</option>
            </select>
          	</div>
            <div class="form-group input-group">
              <span class="input-group-addon" style="width: 200px;">District Office:</span>
              <input type="text" style="width: 350px;" class="form-control" id="office" name="office" required>
            </div>
          	<div class="form-group input-group" style="display: none;">
          		<span class="input-group-addon" style="width: 200px;">Date Received:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="date_received" name="date_received">
          	</div>
          	<div class="form-group input-group" style="display: none;">
          		<span class="input-group-addon" style="width: 200px;">Received From:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="sender" name="sender">
          	</div>
          	<div class="form-group input-group" style="display: none;">
          		<span class="input-group-addon" style="width: 200px;">Supplier:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="supplier" name="supplier">
          	</div>
          	<div class="form-group input-group" style="display: none;">
          		<span class="input-group-addon" style="width: 200px;">Date of Acquisition:</span>
          		<input type="text" style="width: 350px;" class="form-control" id="acquisition_date" name="acquisition_date">
          	</div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
          <button type="submit" class="btn btn-success" name="set">OK</button>
        </div>
        </form>
      </div>
      
    </div>
  </div>
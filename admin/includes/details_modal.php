<div class="modal fade" id="addnew">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title"><b>เพิ่มรายการสินค้า</b></h4>
            </div>
            <div class="modal-body">
              <form class="form-horizontal" method="POST" action="details_add.php">
                <input type="hidden" class="userid" name="id">
                <input type="hidden" name="salesid" value=<?php  echo $_GET['salse_id'];?>>
                <div class="form-group">
                    <label for="product" class="col-sm-3 control-label">สินค้า</label>

                    <div class="col-sm-9">
                      <select class="form-control select2" style="width: 100%;" name="product" id="product" required>
                        <option value="" selected>- Select -</option>
                      </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="quantity" class="col-sm-3 control-label">จำนวน</label>

                    <div class="col-sm-9">
                      <input type="number" class="form-control" id="quantity" name="quantity" value="1" required>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default btn-flat pull-left" data-dismiss="modal"><i class="fa fa-close"></i> Close</button>
              <button type="submit" class="btn btn-primary btn-flat" name="add"><i class="fa fa-save"></i> Save</button>
              </form>
            </div>
        </div>
    </div>
</div>

<!-- Delete -->
<div class="modal fade" id="delete">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title"><b>ลบข้อมูล</b></h4>
            </div>
            <div class="modal-body">
              <form class="form-horizontal" method="POST" action="details_delete.php">
                <input type="hidden" class="detailid" name="id">
                <input type="hidden" name="salesid" value=<?php  echo $_GET['salse_id'];?>>
                <div class="text-center">
                    <h2 class="bold fullname"></h2>
                </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default btn-flat pull-left" data-dismiss="modal"><i class="fa fa-close"></i> Close</button>
              <button type="submit" class="btn btn-danger btn-flat" name="delete"><i class="fa fa-trash"></i> Delete</button>
              </form>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="edit">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title"><b><span class="productname"></span></b></h4>
            </div>
            <div class="modal-body">
              <form class="form-horizontal" method="POST" action="details_edit.php">
                <input type="hidden" class="detailid" name="id">
                <input type="hidden" name="salesid" value=<?php  echo $_GET['salse_id'];?>>
                <div class="form-group">
                    <label for="edit_quantity" class="col-sm-3 control-label">จำนวน</label>

                    <div class="col-sm-9">
                      <input type="text" class="form-control" id="edit_quantity" name="quantity">
                    </div>
                </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default btn-flat pull-left" data-dismiss="modal"><i class="fa fa-close"></i> Close</button>
              <button type="submit" class="btn btn-success btn-flat" name="edit"><i class="fa fa-check-square-o"></i> Update</button>
              </form>
            </div>
        </div>
    </div>
</div>
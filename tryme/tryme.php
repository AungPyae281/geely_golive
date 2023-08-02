<div class="content-wrapper">
	<div class="content-header">
		<h3>test</h3>
	</div>
	<section class="content">
		<div class="container-fluid">			
			<div class="row">
                <div class="col-md-6">
					<div class="card card-outline card-wppp">
						<div class="card-header">
							<h3 class="card-title">list <span id="total_records" style="font-weight:bold;"> </span></h3>
						</div>
						<div class="card-body p-0">
							<table class="table table-striped table-bordered" id="myTable">
								<thead>                  
									<tr>
										<th>no </th>
										<th>brand </th>
									</tr>
								</thead>
								<tbody>
								</tbody>
							</table>
						</div>
					</div>
				</div>
            </div>
		</div>
	</section>
</div>	

<script src="https://103.101.16.250:9090/geely_golive/plugins/jquery/jquery.min.js"></script> 
<script src="https://103.101.16.250:9090/geely_golive/plugins/jquery-ui/jquery-ui.min.js"></script> 

<script>
	$(function() {
        getAll();
    });

    function getAll(){
		$("#myTable").find("tbody").find("tr").remove();
		$.ajax({
			url: "https://103.101.16.250:9090/geely_golive/tryme_api.php"
		}).done(function(data) {
			$.each(data.records, function(i, v) {
				$("#myTable").find("tbody")
				.append($('<tr>')
					.append("<td style='width: 10px'>" + (i+1) + "</td>")
					.append("<td>" + v.brand + "</td>")
					)
			});
		});
	}
</script></body></html>
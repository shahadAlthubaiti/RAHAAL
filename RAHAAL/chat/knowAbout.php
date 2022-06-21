<?PHP
include('DB.php');
$keyword = $_POST['keyword']; // events or parks
$name = $_POST['name']; // name of event or park
$info = $_POST['info']; // user whats to know




$sql = "SELECT * FROM `$keyword` WHERE `name` = '$name' ";
$getData = $conn->query($sql) or die($conn->error);
$data = $getData->fetch_assoc();



function replayUI($info)
{
    global $data;
    if ($info == 'location') {
        echo "<a target='_blank' href='" . $data[$info] . "'> Click here to view the location ! </a>";
    } else {
        echo "<p>" . $data[$info] . "</p>";
    }
}








?>

<div class="bot-inbox inbox">

    <div class="icon">
        <img style="border-radius: 100px;" width="40px" height="40px" src="images/logo.jpeg" />
    </div>

    <div class="msg-header">
        <?PHP replayUI($info); ?>
    </div>

</div>


<script>
    $(document).ready(function() {

        $(".yest").on("click", function(e) {
            var keyword = $(this).attr('id'); // 
            var info = $(this).attr('data-id'); // 
            var link = "chat/payment.php";
            window.open(link, '_blank').focus();
        });
        $(".not").on("click", function(e) {
            $(".quest").remove();
            $(".form").append("<p>no problem</p>")
        });
    });
</script>
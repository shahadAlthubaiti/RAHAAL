<?PHP
include("DB.php");
$name = $_POST['name']; // name of event or or park
$keyword = $_POST['keyword']; // parks or event

$sql = "SELECT * FROM `$keyword` WHERE `name` = '$name' ";
$getData = $conn->query($sql) or die($conn->error);
$data = $getData->fetch_assoc();



?>
<div class="bot-inbox inbox">


    <div class="msg-header">

        <table>
            <tr>
                <td>
                    <p>What do you like to know about <strong><?PHP echo $name; ?> </strong> ?</p>
                </td>
            </tr>
            <tr>
                <td> <img class="imgg" width="100px" height="100px" src="<?PHP echo $data['image_path'] ?>" /></td>
            </tr>

        </table>
        <div class="lasteventimg1">
            <ul class="ull">
                <li class="infoClick dli" data-id="ticket" id="<?PHP echo $keyword; ?>">
                    <div><strong>Tickets</strong></div>
                </li>

                <li class="infoClick dli" data-id="location" id="<?PHP echo $keyword; ?>">
                    <div><strong> Location </strong></div>
                </li>

                <?PHP

                if ($keyword == 'parks') {
                    echo '  <li class="infoClick dli" data-id="address" id="' . $keyword . '">
                  <div><strong> Address </strong></div>
              </li>';
                }

                ?>

                <li class="infoClick dli" data-id="age" id="<?PHP echo $keyword; ?>">
                    <div><strong> Age </strong></div>
                </li>

                <li class="infoClick dli" data-id="open" id="<?PHP echo $keyword; ?>">
                    <div><strong> open </strong></div>
                </li>

                <li class="infoClick dli" data-id="rule" id="<?PHP echo $keyword; ?>">
                    <div><strong> Rules </strong></div>
                </li>

                <!-- <li class="infoClick dli" data-id="description" id="<?PHP echo $keyword; ?>"> -->
                <!-- <div><strong> Know more about <?PHP #echo $name; 
                                                    ?> </strong></div> -->
                <!-- </li> -->
            </ul>
        </div>
    </div>

</div>


<script>
    $(document).ready(function() {

        $(".infoClick").on("click", function(e) {
            var keyword = $(this).attr('id'); // 
            var info = $(this).attr('data-id'); // 
            var name = "<?PHP echo $name; ?>"
            $.ajax({
                url: 'chat/knowAbout.php',
                type: 'POST',
                data: {
                    'name': name,
                    "info": info,
                    "keyword": keyword

                },
                success: function(result) {
                    $(".form").append(result);
                    $(".form").scrollTop($(".form")[0].scrollHeight);
                }
            });
        });
    });
</script>



<style>
    .lasteventimg1 {
        width: 500px;
        overflow-x: scroll;
        overflow-y: hidden;
        height: auto;
    }

    .ull {
        white-space: nowrap;
        height: auto;
    }

    .dli {
        display: inline-block;
        margin-right: 10px;
        padding: 10px;
        height: 50px;
        border-color: black;
        border-width: 1px;
        border-style: solid;
        border-radius: 10px;
    }

    .dli:hover {
        background-color: #f3f3f3;
    }

    .imgg {
        width: 150px;
        height: 150px;
        border-radius: 7px;
    }
</style>
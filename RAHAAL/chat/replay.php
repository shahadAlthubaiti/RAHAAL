<?PHP
include('DB.php');
$msg = mb_strtolower($_POST['text']);
$sql = "SELECT * FROM `chats` WHERE `ask` LIKE '%$msg%'";
$dataset = $conn->query($sql) or die($conn->error);
if ($conn->affected_rows > 0) {
    $data = $dataset->fetch_assoc();
    $action = $data['action'];
    $answer = $data['answer'];
    $keyword = $data['keyword'];
    switch ($action) {
        case 'text':
            echo replayUI($answer);
            break;
        case 'question':
            echo replayUI($answer);
            echo questionUiBtn();
            break;
        case 'list':
            echo replayUI($answer);
            echo listUi($keyword);
            break;
        case 'show':
            echo replayUI($answer);
            echo listUiShow($keyword);
            break;
    }
} else {
    echo replayUI("Sorry can't be able to understand you!");
}





function replayUI($replay)
{
    return '
    <div class="bot-inbox inbox">

        <div class="icon">
            <img style="border-radius: 100px;" width="40px" height="40px" src="images/logo.jpeg" />
        </div>

        <div class="msg-header">
              <p>' . $replay . '</p>
        </div>

    </div>
    ';
}


// ask for weather 
function questionUiBtn()
{
    return "
    <table id='ques' class='table border'>
        <tr>
            <td><button class='yes button' >Yes</button></td>
            <td><button class='no button'>No</button></td>
        </tr>
    </table>
";
}


function listUiShow($keywords)
{
    global $conn;
    $keywords = explode(',', $keywords);
    $count = count($keywords);
    $data = array();
    for ($i = 0; $i < $count; $i++) {
        $sql = "SELECT * FROM `Events` WHERE `name` like '%$keywords[$i]%' ";
        $fetch = $conn->query($sql) or die($conn->error);
        if ($fetch->num_rows > 0) {
            $got = $fetch->fetch_assoc();
            array_push($data, $got);
        }
        else {
            $sql = "SELECT * FROM `parks` WHERE `name` like '%$keywords[$i]%' ";
        $fetch = $conn->query($sql) or die($conn->error);
        if ($fetch->num_rows > 0) {
            $got = $fetch->fetch_assoc();
            array_push($data, $got);
        }
        }
    }


    echo '<div class="lasteventimg">  <ul>';
    foreach ($data as $key => $row) {
        echo '
           <li data-id="events" class="btn" id="' . $row['name'] . '">
           <div><strong>' . $row['name'] . '</strong></div>
           <img class="imgg" src="' . $row['image_path'] . '" />
           </li>

      ';
    }



    echo ' </ul></div>';
}

function listUi($keyword)
{
    global $conn;
    $sql = "SELECT * from `$keyword`";
    $data = $conn->query($sql) or die($conn->error);
    echo '<div class="lasteventimg">  <ul>';
    while ($row = mysqli_fetch_array($data)) {
        echo '
           <li data-id="' . $keyword . '" class="btn" id="' . $row['name'] . '">
           <div><strong>' . $row['name'] . '</strong></div>
           <img class="imgg" src="' . $row['image_path'] . '" />
           </li>
         
      ';
    }

    echo ' </ul></div>';
}




?>

<script>
    $(document).ready(function() {
        // 
        $(".no").on("click", function() {
            $("#ques").remove();
            $(".form").append("No problem ! ");
            $(".form").scrollTop($(".form")[0].scrollHeight);
        });

        $(".yes").on("click", function(d) {
            $.ajax({
                url: 'chat/weather.php',
                success: function(result) {
                    $(".form").append(result);
                    $(".form").scrollTop($(".form")[0].scrollHeight);
                }
            });
            e.preventDefault();
        });

        $(".btn").on("click", function(e) {
            var name = $(this).attr('id'); // name of events or parks
            var keyword = $(this).attr('data-id'); // events or parks
            $.ajax({
                url: 'chat/displayInfo.php',
                type: 'POST',
                data: {
                    "keyword": keyword,
                    "name": name
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
    .lasteventimg {
        width: 500px;
        overflow-x: scroll;
        overflow-y: hidden;
        height: 250px;
        /* background-color: red; */

    }


    ul {

        white-space: nowrap;
    }

    li {
        margin-right: 10px;
        display: inline-block;
        height: 300px;
    }



    .imgg {
        width: 150px;
        height: 150px;
        border-radius: 7px;
    }
</style>
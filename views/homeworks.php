<div>
    <h3>Homeworks</h3>
    <ol>
        <?php foreach ($records as $record) { ?>
            <li>
                <?php
                    echo $record->name.":<br>";
                    if ($record->mark) {
                        echo "TRUE";
                    } else {
                        echo "FALSE";
                    }
                ?>
            </li>
        <?php }?>
    </ol>
</div>
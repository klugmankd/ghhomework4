<div>
    <h3>Students</h3>
    <ol>
        <?php foreach ($records as $record) { ?>
            <li><?=$record->name." ".$record->surname?></li>
        <?php }?>
    </ol>
</div>
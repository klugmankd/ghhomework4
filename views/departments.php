<div>
    <h3>Departments</h3>
    <ol>
        <?php foreach ($records as $record) { ?>
            <li><?=$record->name?></li>
        <?php }?>
    </ol>
</div>
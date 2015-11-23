<?php

class TimewatchUserMigrateBase extends Migration {

  public function __construct($arguments) {
    parent::__construct($arguments);

    $key = ['__id' => ['type' => 'varchar', 'length' => 255, 'not null' => TRUE]];
    $this->map = new MigrateSQLMap($this->machineName, $key, MigrateDestinationEntityAPI::getKeySchema('user'));
    $query = db_select('_raw_' . $this->tableName, 't')->fields('t');
    $this->source = new MigrateSourceSQL($query);
    $this->destination = new MigrateDestinationUser();
  }
}

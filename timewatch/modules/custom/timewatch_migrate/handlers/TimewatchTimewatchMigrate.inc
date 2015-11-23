<?php

class TimewatchTimewatchMigrate extends TimewatchUserMigrateBase {

  protected $tableName = 'timewatch';

  public function __construct($arguments) {
    parent::__construct($arguments);

    $this->addFieldMapping('name', '_name');
    $this->addFieldMapping('mail', '_email');
    $this->addFieldMapping('pass', '_pass');

    $this
      ->addFieldMapping('status')
      ->defaultValue(TRUE);

    $role = user_role_load_by_name('timewatch');
    $this
      ->addFieldMapping('roles')
      ->defaultValue(array($role->rid));
  }
}

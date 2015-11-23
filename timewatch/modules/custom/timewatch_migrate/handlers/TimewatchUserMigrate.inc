<?php

class TimewatchUserMigrate extends TimewatchUserMigrateBase {

  protected $tableName = 'user';

  public function __construct($arguments) {
    parent::__construct($arguments);

    $this->addFieldMapping('name', '_name');
    $this->addFieldMapping('mail', '_email');
    $this->addFieldMapping('pass', '_pass');
    $this->addFieldMapping('field_pincode', '_pincode');
    $this
      ->addFieldMapping('status')
      ->defaultValue(TRUE);
  }
}

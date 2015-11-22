<?php
/**
 * @file
 * Timewatch profile.
 */

/**
 * Implements hook_form_FORM_ID_alter().
 *
 * Allows the profile to alter the site configuration form.
 */
function timewatch_form_install_configure_form_alter(&$form, $form_state) {
  // Pre-populate the site name with the server name.
  $form['site_information']['site_name']['#default_value'] = $_SERVER['SERVER_NAME'];
}

/**
 * Implements hook_install_tasks().
 */
function timewatch_install_tasks() {
  $tasks = array();

  $tasks['timewatch_setup_variables'] = array(
    'display_name' => st('Set Variables'),
    'display' => FALSE,
  );

  // Run this as the last task!
  $tasks['timewatch_setup_rebuild_permissions'] = array(
    'display_name' => st('Rebuild permissions'),
    'display' => FALSE,
  );

  return $tasks;
}

/**
 * Task callback; Set variables.
 */
function timewatch_setup_variables() {
  variable_set('features_default_export_path', 'profiles/timewatch/modules/custom');
}

/**
 * Task callback; Rebuild permissions (node access).
 *
 * Setting up the platform triggers the need to rebuild the permissions.
 * We do this here so no manual rebuild is necessary when we finished the
 * installation.
 */
function timewatch_setup_rebuild_permissions() {
  node_access_rebuild();
}

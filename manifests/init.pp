
class pypolicydspf(
  Hash $configs = {},
) {

  include ::pypolicydspf::install

  $configs.each | String $key, String $value | {
    pypolicydspf_config {
      $key: value => $value;
    }
  }
}

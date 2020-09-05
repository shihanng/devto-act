load "../node_modules/bats-assert/load"
load "../node_modules/bats-support/load"

@test "no yml files should be generated" {
  assert [ -e 'test_markdowns/sample_1/devto.yml' ]
  assert [ -e 'test_markdowns/sample_2/devto.yml' ]
}

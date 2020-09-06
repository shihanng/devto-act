load "../node_modules/bats-assert/load"
load "../node_modules/bats-support/load"

@test "no yml files should be generated" {
  refute [ -e 'test_markdowns/sample_1/devto.yml' ]
  refute [ -e 'test_markdowns/sample_2/devto.yml' ]
}

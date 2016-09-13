context("access")

mn <- env_load()$mn

test_that("get_package works for a simple package", {
  pkg <- create_dummy_package(mn)
  get_pkg <- get_package(mn, pkg$metadata)

  expect_true(pkg$metadata == get_pkg$metadata)
  expect_true(pkg$resource_map == get_pkg$resource_map)
  expect_true(pkg$data == get_pkg$data)
})

test_that("get_package works for a package with a child package", {
  pkg <- create_dummy_package(mn)
  child_pkg <- create_dummy_package(mn)
  updated_resource_map <- update_resource_map(mn,
                                              resource_map_pid = pkg$resource_map,
                                              metadata_pid = pkg$metadata,
                                              data_pids = pkg$data,
                                              child_pids = child_pkg$resource_map,
                                              check_first = FALSE)

  get_pkg <- get_package(mn, pkg$metadata)

  expect_true(pkg$metadata == get_pkg$metadata)
  expect_true(pkg$resource_map != get_pkg$resource_map)
  expect_true(pkg$data == get_pkg$data)
  expect_true(get_pkg$child_packages == child_pkg$resource_map)
})

test_that("get_package works for an object in two packages",{
  child_pkg <- create_dummy_package(mn)
  second_resmap <- create_resource_map(mn, metadata_pid = child_pkg$metadata, check_first = FALSE)
  get_package(mn, child_pkg$metadata)
})
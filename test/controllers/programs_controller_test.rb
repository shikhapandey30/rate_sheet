require 'test_helper'

class ProgramsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @program = programs(:one)
  end

  test "should get index" do
    get programs_url
    assert_response :success
  end

  test "should get new" do
    get new_program_url
    assert_response :success
  end

  test "should create program" do
    assert_difference('Program.count') do
      post programs_url, params: { program: { adjustment_rate: @program.adjustment_rate, base_rate: @program.base_rate, fannie_mae: @program.fannie_mae, interest_rate: @program.interest_rate, loan_purpose: @program.loan_purpose, loan_size: @program.loan_size, loan_type: @program.loan_type, lock_period: @program.lock_period, term: @program.term } }
    end

    assert_redirected_to program_url(Program.last)
  end

  test "should show program" do
    get program_url(@program)
    assert_response :success
  end

  test "should get edit" do
    get edit_program_url(@program)
    assert_response :success
  end

  test "should update program" do
    patch program_url(@program), params: { program: { adjustment_rate: @program.adjustment_rate, base_rate: @program.base_rate, fannie_mae: @program.fannie_mae, interest_rate: @program.interest_rate, loan_purpose: @program.loan_purpose, loan_size: @program.loan_size, loan_type: @program.loan_type, lock_period: @program.lock_period, term: @program.term } }
    assert_redirected_to program_url(@program)
  end

  test "should destroy program" do
    assert_difference('Program.count', -1) do
      delete program_url(@program)
    end

    assert_redirected_to programs_url
  end
end

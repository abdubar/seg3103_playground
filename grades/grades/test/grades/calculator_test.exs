defmodule Grades.CalculatorTest do
  use ExUnit.Case
  alias Grades.Calculator

  describe "percentage_grade/1" do
    test "calculates percentage grade with empty homework and labs" do
      input = %{homework: [], labs: [], midterm: 0.4, final: 0.4}
      assert Calculator.percentage_grade(input) == 20
    end

    test "calculates percentage grade with minimal homework and labs" do
      input = %{homework: [0.5], labs: [0.25, 0.25, 0.25], midterm: 0.4, final: 0.4}
      assert Calculator.percentage_grade(input) == 40
    end
  end

  describe "letter_grade/1" do
    test "calculates letter grade with empty homework and labs" do
      input = %{homework: [], labs: [], midterm: 0.4, final: 0.4}
      assert Calculator.letter_grade(input) == "EIN"
    end

    test "calculates letter grade with minimal homework and labs" do
      input = %{homework: [0.3, 0.3, 0.3], labs: [0.3, 0.3, 0.3], midterm: 0.8, final: 0.8}
      assert Calculator.letter_grade(input) == "C"
    end
  end

  describe "numeric_grade/1" do
    test "calculates numeric grade with empty homework and labs" do
      input = %{homework: [], labs: [], midterm: 0.4, final: 0.4}
      assert Calculator.numeric_grade(input) == 0
    end

    test "calculates numeric grade with minimal homework and labs" do
      input = %{homework: [0.3, 0.3, 0.3], labs: [0.3, 0.3, 0.3], midterm: 0.8, final: 0.8}
      assert Calculator.numeric_grade(input) == 4
    end
  end
end

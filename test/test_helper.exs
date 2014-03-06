Dynamo.under_test(Webapp.Dynamo)
Dynamo.Loader.enable
ExUnit.start

defmodule Webapp.TestCase do
  use ExUnit.CaseTemplate

  # Enable code reloading on test cases
  setup do
    Dynamo.Loader.enable
    :ok
  end
end

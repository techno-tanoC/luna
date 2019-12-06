defmodule Luna.Now.Template do
  import Luna.Block

  def build(message) do
    %{
      blocks: [
        plain_text_selction(message)
      ]
    }
  end
end

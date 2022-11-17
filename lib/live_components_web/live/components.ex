defmodule LiveComponentsWeb.Components do
  use Phoenix.Component

  def big_button(assigns) do
    assigns =
      assigns
      |> assign_new(:width, fn -> "default" end)

      ~H"""
      <button class={"button w-#{@width}"}>
        <%= render_slot(@inner_block) %>
      </button>
      """
  end
end

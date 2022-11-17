defmodule LiveComponentsWeb.ComponentsLive do
  use LiveComponentsWeb, :live_view
  import LiveComponentsWeb.Components

  def render(assigns) do
    ~H"""
    <div>
      <p>
        <button class="button">Default</button>
        <button class="button button-primary">Primary</button>
        <button class="button button-secondary"><i>Secondary</i></button>
      </p>
      <p>
        <.color_button>
          Default
        </.color_button>
        <.color_button color="primary">
          Primary
        </.color_button>
        <.color_button color="secondary">
          <i>Secondary</i>
        </.color_button>
      </p>
      <p>
        <.big_button width="100">
          Biiiiiiiig Button
        </.big_button>
      </p>
    </div>
    """
  end

  def color_button(assigns) do
    assigns =
      assigns
      |> assign_new(:color, fn -> "default" end)

      ~H"""
      <button class={"button button-#{@color}"}>
        <%= render_slot(@inner_block) %>
      </button>
      """
  end
end

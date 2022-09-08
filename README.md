# Recovery

It's an example Phoenix/LiveView application to show a possible issue with forms
recovery process that we have found.

## How to Reproduce

### Start Server

To start your Phoenix server:

* Install dependencies with `mix deps.get`
* Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

### In the Browser

Now you can open JavaScript console of your browser and run:

liveSocket.disconnect()
liveSocket.connect()

In the Phoenix server logs you can notice that after re-connection, we get "suggest" event,
with only one form input field value (the top one).

## Details

If we remove `phx-change` attr from the `form`, we won't receive this event at all.
Same happens when we move `phx-change` attr to the `query` field itself.

If we move simple input field (without `phx-change` attribute) to the first place
in the form, we get all form fields' values.

For some reason, during form recovery process it sends only first child element's value
if it has `phx-change` attr set.

Important source code files to look into:

- [lib/recovery_web/live/root_live.ex](lib/recovery_web/live/root_live.ex)
- [lib/recovery_web/live/root_live.html.heex](lib/recovery_web/live/root_live.html.heex)
- [lib/recovery_web/live/components/my_form_component.ex](lib/recovery_web/live/components/my_form_component.ex)
- [lib/recovery_web/live/components/my_form_component.html.heex](lib/recovery_web/live/components/my_form_component.html.heex)

import * as React from "/opt/oni/resources/app/node_modules/react"
import * as Oni from "/opt/oni/resources/app/node_modules/oni-api"

export const activate = (oni: Oni.Plugin.Api) => {
  console.log("config activated")

  // Input
  //
  // Add input bindings here:
  //
  oni.input.bind("<c-enter>", () => console.log("Control+Enter was pressed"))

  //
  // Or remove the default bindings here by uncommenting the below line:
  //
  // oni.input.unbind("<c-p>")

}

export const deactivate = (oni: Oni.Plugin.Api) => {
  console.log("config deactivated")
}

export const configuration = {
  //add custom config here, such as

  "colors.background": "#121212",
  "colors.editor.background": "121212",

  "oni.useDefaultConfig": false,
  //"oni.bookmarks": ["~/Documents"],
  "oni.loadInitVim": true,
  //"editor.fontSize": "14px",
  "editor.fontFamily": "Source Code Pro for Powerline",
  "oni.hideMenu": true,

  // UI customizations
  // "ui.animations.enabled": true,
  "ui.fontSmoothing": "auto",

  "autoClosingPairs.enabled": false,

  "sidebar.enabled": false,
  "statusbar.enabled": true,

  "tabs.mode": "buffers",
  "tabs.height": "1.5em",
  "tabs.showIndex": true,

  "experimental.markdownPreview.enabled": true,
}

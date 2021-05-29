function preventBack() {
    window.history.back();
  }
  setTimeout("preventBack()", 0);
  window.onunload = function () {
    null;
  };
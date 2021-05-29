/**
 * 
 */

document.querySelector('form').onsubmit = function() {
  this.setAttribute('action', "/view-data?state=" + document.querySelector('input[name=state]').value)
}

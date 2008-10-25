// Menu selectors
function show_selection( tag_name, el )
{
  var old   = null;
  var links = $(tag_name).getElementsByTagName( 'a' );
  for( var i = 0, length = links.length; i < length; i++ ) {
    if ( links[i].className.indexOf( 'selected') != -1 )
    {
       old = links[i];
       break;
    }
  }
  if( old != null )
  {
    old.className = old.className.replace( ' selected', '' );  
  }
  el.className  += " selected";
}



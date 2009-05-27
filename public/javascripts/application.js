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


// Refreshing the composite bar chart
function refresh_composite_bar( category )
{
  new Ajax.Request( '/composites/refresh_composite_bar',
  { asynchronous:true, 
     evalScripts:true, 
     parameters: { category: category, authenticity_token: window._token },
     onComplete:function(request) { 
       console.log( document.bar );
       console.log( request.responseText );
       document.bar.Update_XML( request.responseText, false, 'reset' );
     }      
  } );     
}


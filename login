 public void IniciarSesion(String us, String con) {
        String URL = "http://mzfinan.dyndns.org:81/wslafin/IniciarSesion.php?username=" + us + "&password=" + con;
        RequestQueue requestQueue = Volley.newRequestQueue(this);
        JsonArrayRequest request = new JsonArrayRequest(Request.Method.GET, URL, null, new Response.Listener<JSONArray>() {
            @Override
            public void onResponse(JSONArray respuesta) {
                if (respuesta.length()>0){
                    Intent i = new Intent(getApplicationContext(), menu.class);
                    startActivity(i);
                    finish();
                }
                else {
                    Toast.makeText(getApplicationContext(), "Incorrecto", Toast.LENGTH_LONG).show();
                    btnIniciar.setVisibility(View.VISIBLE);
                    progressBar.setVisibility(View.INVISIBLE);
                }
            }
        }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {
                Toast.makeText(getApplicationContext(), "Usuario o contraseña"+error.toString(), Toast.LENGTH_LONG).show();
            }
        });
        requestQueue.add(request);
    }
}

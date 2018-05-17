 try {

                            JSONArray array = new JSONArray(respuesta.toString());
                            for (int i = 0; i < array.length(); i++) {
                            JSONObject row = array.getJSONObject(i);
                            nivel = row.getString("nivel");
                            descripcion = row.getString("descripcion");
                            idusuario =row.getString("id_usuario");

                        }

                    }catch (JSONException e){
                        e.printStackTrace();
                    }
                    

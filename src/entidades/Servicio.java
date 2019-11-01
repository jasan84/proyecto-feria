package entidades;

public class Servicio {
	
	private String _nombre_servicio;
	private String _descripcion_servicio;
	private String _imagen_servicio;
	private String _partido;
	private String _localidad;
	private String _direccion;
	private int _telefono;
	private String _url;
	private int _id_rubro;
	
	public String get_nombre_servicio(){
		return _nombre_servicio;
	}
	public void set_nombre_servicio(String _nombre_servicio){
		this._nombre_servicio = _nombre_servicio;
	}
	//
	public String get_descripcion_servicio() {
		return _descripcion_servicio;
	}
	public void set_descripcion_servicio(String _descripcion_servicio) {
		this._descripcion_servicio = _descripcion_servicio;
	}
	//
	public String get_imagen_servicio() {
		return _imagen_servicio;
	}
	public void set_imagen_servicio(String _imagen_servicio) {
		this._imagen_servicio = _imagen_servicio;
	}
	//
	public String get_partido() {
		return _partido;
	}
	public void set_partido(String _partido) {
		this._partido = _partido;
	}
	//
	public String get_localidad() {
		return _localidad;
	}
	public void set_localidad(String _localidad) {
		this._localidad = _localidad;
	}
	//
	public String get_direccion() {
		return _direccion;
	}
	public void set_direccion(String _direccion) {
		this._direccion = _direccion;
	}
	//
	public int get_telefono() {
		return _telefono;
	}
	public void set_telefono(int _telefono) {
		this._telefono = _telefono;
	}
	
	public String get_url() {
		return _url;
	}
	
	public void set_url(String _url) {
		this._url = _url;
	}
	
	public int get_id_rubro() {
		return _id_rubro;
	}
	public void set_id_rubro(int _id_rubro) {
		this._id_rubro = _id_rubro;
	}
}
	
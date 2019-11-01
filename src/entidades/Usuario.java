package entidades;

public class Usuario {
	
	private String _nombre;
	private String _apellido;
	private String _mail;
	private String _password1;
	private String _password2;
	private int _telefono;
	private boolean _es_servicio;
	
	
	public String get_nombre() {
		return _nombre;
	}	
	public void set_nombre(String _nombre) {
		this._nombre = _nombre;
	}
	//
	public String get_apellido() {
		return _apellido;
	}	
	public void set_apellido(String _apellido) {
		this._apellido = _apellido;
	}
	//
	public String get_mail() {
		return _mail;
	}	
	public void set_mail(String _mail) {
		this._mail = _mail;
	}
	//
	public String get_password1() {
		return _password1;
	}
	public void set_password1(String _password1) {
		this._password1 = _password1;
	}
	//
	public String get_password2() {
		return _password2;
	}
	public void set_password2(String _password2) {
		this._password2 = _password2;
	}
	//
	public int get_telefono() {
		return _telefono;
	}	
	public void set_telefono(int _telefono) {
		this._telefono = _telefono;
	}	
	//
	public boolean get_es_servicio() {
		return _es_servicio;
	}
	public void set_es_servicio(boolean _es_servicio) {
		this._es_servicio = _es_servicio;
	}
}



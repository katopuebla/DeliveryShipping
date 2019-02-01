export interface EnvioEngrega {
    guia?: string
  ; name?: string
  ; direction?: string
  ; recibe?: string
  ; identificacion?: string
  ;
}
export interface Envio {
    guia?: string
    ; remitente?: Source
    ; consignatario?: Source
    ; tipo_envio?: TipoEnvio
    ; tipo_servicio?: TipoServicio
    ; peso?: number
    ; alto?: number
    ; ancho?: number
    ; largo?: number
    ;
}

export interface Source {
  id?: number
  ; nombre?: string
  ; apellido_paterno?: string
  ; apellido_materno?: string
  ; direccion?: string
  ; codigo_postal?: string
  ; deleg_municipop?: string
  ; ciudad?: string
  ; estado?: string
  ; pais?: string
  ; email?: string
  ; telefono?: string
  ; rfc?: string
  ;
}

export interface CodigoPostal {
  codigoPostal?: number;
  descripcion?: string;
  colonia?: string;
  ciudad?: string;
  municipio?: string;
  estado?: string;
}

export interface TipoEnvio {
  id?: number;
  descripcion?: string;
}
export interface TipoServicio {
  id?: number;
  descripcion?: string;
}

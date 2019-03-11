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

export interface EnvioDto {
    guia_sq_id?: string
    ; remi_sq_id?: number
    ; dest_sql_id?: number
    ; tipo_envio_id?: number
    ; tipo_servicio_id?: number
    ; peso?: number
    ; alto?: number
    ; ancho?: number
    ; largo?: number
    ; estatus_id?: string
    ;
}

export interface Source {
  id?: number
  ; nombre?: string
  ; apellido_paterno?: string
  ; apellido_materno?: string
  ; direccion?: string
  ; codigo_postal?: string
  ; deleg_municipio?: string
  ; ciudad?: string
  ; estado?: string
  ; pais?: string
  ; email?: string
  ; telefono?: string
  ; rfc?: string
  ;
}

export interface CodigoPostal {
  codigo_postal?: string;
  direccion?: string;
  colonia?: string;
  deleg_municipio?: string;
  ciudad?: string;
  estado?: string;
  pais?: string;
  estatus?: boolean;
}

export interface TipoEnvio {
  id?: number;
  descripcion?: string;
}
export interface TipoServicio {
  id?: number;
  descripcion?: string;
}

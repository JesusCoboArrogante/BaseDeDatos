/*Cree una vista que muestre información útil sobre las consultas realizadas, como el nombre del doctor, el nombre del paciente y la fecha de la consulta.*/
create view fechas as
select tdoctor.d_nombre, tpaciente.p_nombre, tconsultas.fx_consulta from tconsultas
inner join tdoctor on tconsultas.id_doctor = tdoctor.id_doctor
inner join tpaciente on tconsultas.id_doctor = tpaciente.id_paciente;

/*A) Obtener todos los pacientes que tienen más de 60 años de edad.*/
select tpaciente.p_nombre, tpaciente.edad from tpaciente
where edad > 60;

/*B) Mostrar todos los doctores que trabajan en la especialidad de cardiología. */
select tdoctor.d_nombre, tdoctor.especialidad from tdoctor
where especialidad = "cardiologia";

delete from tconsulta
right inner tdoctor on tdoctor.id_doctor = tconsulta.id_doctor
where tconsulta.id_doctor is null
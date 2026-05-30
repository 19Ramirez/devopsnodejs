test('Buscar la palabra HOLA en el mensaje', () => {
    const mensaje = "Buscar en esta cadena la palabra HOLA";
    expect(mensaje).toContain("HOLA");
});
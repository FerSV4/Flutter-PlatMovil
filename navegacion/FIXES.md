# Fixes sobre la app de adopcion

---

## 1. Eliminación de las cadenas innecesarias en las Rutas

**Problema:**  
Usar cadenas literales para la navegación esta mal por los errores que puede generar, esto seria molesto a la hora de compilarlo

**Solución:**  
Se declararon constantes estáticas en cada pantalla para manejar sus respectivas rutas.

**Commit:**
[text](https://github.com/FerSV4/Flutter-PlatMovil/commit/6963fd496e890f83032f400c0e1189d16f328cf5)

### Antes

```dart
routes: {
  '/catalogo': (context) => const PantallaCatalogo(),
}

Navigator.pushNamed(context, '/catalogo');
```

### Después

```dart
class PantallaCatalogo extends StatelessWidget {
  static const String ruta = '/catalogo';

  const PantallaCatalogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
```

```dart
routes: {
  PantallaCatalogo.ruta: (context) => const PantallaCatalogo(),
}

Navigator.pushNamed(context, PantallaCatalogo.ruta);
```

---

## 2. Buena practica de tipado

**Problema:**  
Pasar datos entre pantallas usando un mapa de strings es mala practica.

**Solución:**  
Se implementó Programación Orientada a Objetos creando el modelo de datos Mascota.

**Commit:**
[text](https://github.com/FerSV4/Flutter-PlatMovil/commit/a3cc18aa646b5cce0d8b2fa767ae6dd73592ea39)

### Antes

```dart
final listaMascotas = [
  {'nombre': 'Ñiky', 'tipo': 'Perro', 'edad': '2 años', 'color': 'Caramelo'},
];
```

```dart
Text(mascota['nombre']!)
```

### Después

```dart
class Mascota {
  final String nombre;
  final String tipo;
  final String edad;
  final String color;

  const Mascota({
    required this.nombre,
    required this.tipo,
    required this.edad,
    required this.color,
  });
}
```

```dart
Text(mascota.nombre)
```

---

## 3. Mod del metodo build

**Problema:**  
Declarar la lista dentro de build() provoca recreaciones innecesarias en cada renderizado.

**Solución:**  
Se movió la lista a un atributo de clase.

**Commit:**
[text](https://github.com/FerSV4/Flutter-PlatMovil/commit/d94017a5736c691f5faa32f84b7f191985113429)

### Antes

```dart
@override
Widget build(BuildContext context) {
  final listaMascotas = [
    {'nombre': 'Ñiky'}
  ];
  return Scaffold();
}
```

### Después

```dart
class PantallaCatalogo extends StatelessWidget {
  static const String ruta = '/catalogo';

  final List<Mascota> listaMascotas = const [
    Mascota(nombre: 'Ñiky', tipo: 'Perro', edad: '2 años', color: 'Caramelo'),
  ];

  const PantallaCatalogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
```

---

## 4. Contexto en async

**Problema:**  
Después de un await, el context podría no ser válido si el widget fue destruido.

**Solución:**  
Se utiliza context.mounted antes de usar el contexto.

**Commit:**
[text](https://github.com/FerSV4/Flutter-PlatMovil/commit/857c5b41d0050eeea53c30a8e3eb832b5cb97a67)

### Antes

```dart
onTap: () async {
  final resultado = await Navigator.pushNamed(
    context,
    '/perfil',
    arguments: mascota,
  );

  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(content: Text('Acción realizada')),
  );
}
```

### Después

```dart
onTap: () async {
  final resultado = await Navigator.pushNamed(
    context,
    PantallaPerfil.ruta,
    arguments: mascota,
  );

  if (!context.mounted) return;

  if (resultado != null) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Acción realizada')),
    );
  }
}
```

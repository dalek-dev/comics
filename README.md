# Marvel Comics

Projecto hecho en Flutter basado en la API Developer de Marvel.

## Installation

Para la instalación de este proyecto se debes el portal developer Marvel(<https://developer.marvel.com/>), de este sitio web, se obtiene la 'Public Key' y la 'Private Key', y estas deben registrarse en el archivo ![.env].

El archivo .env debe ubicarse en la raíz del proyecto, como muestra la imagen:

![Imagen](/assets/images/instruction_one.png)

![Imagen](/assets/images/instruction_two.png)

Luego se agregan los campos que son necesarios para el consumo de la API

## Usage

Versión del proyecto: 

**Flutter version 3.10.5 - channel stable $$$$ **
**Dart version 3.0.5**

Para su uso es necesario los siguientes comandos
```dart
flutter clean
```

```dart
flutter pub get
```

```dart
flutter pub run build_runner build --delete-conflicting-outputs
```


# DEMO

![Imagen](/assets/clips/marvel_clip.gif)

## Contributing

Se aceptan pull requests. Para cambios mayores, por favor abra un issue primero, para discutir el cambio.

Asegúrese de actualizar las pruebas según corresponda.

## License

[MIT](https://choosealicense.com/licenses/mit/)
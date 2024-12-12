# Raffashe - Portfólio

Este é o código-fonte do meu site de portfólio pessoal desenvolvido com Flutter. Ele foi projetado para ser uma interface visual elegante e responsiva, exibindo informações sobre minhas habilidades, projetos e experiência.

## Funcionalidades

- **Página de Apresentação:** Uma introdução clara com uma animação chamativa.
- **Seção de Projetos:** Mostra os projetos mais recentes, com links para mais detalhes.
- **Habilidades:** Exibe habilidades organizadas por categorias.
- **Contato:** Inclui um formulário de contato funcional e links para redes sociais.
- **Design Responsivo:** Adaptável para dispositivos móveis, tablets e desktops.

## Estrutura do Projeto

A estrutura do projeto é organizada da seguinte forma:

```
lib/
├── core/
│   ├── constants/
│   ├── utils/
│   └── widgets/
├── features/
│   ├── portfolio/
│   │   └── presentation/screens/
├── splash/
└── main.dart
```

### Pastas Principais

- **core:** Contém constantes, estilos e utilitários globais.
- **features:** Inclui as telas principais do portfólio.
- **splash:** Configuração da tela inicial de carregamento.
- **assets:** Inclui fontes, imagens e outros recursos.

## Configuração

Certifique-se de que você tem o Flutter instalado corretamente. Em seguida, siga as instruções abaixo:

1. Clone o repositório:
   ```bash
   git clone https://github.com/raffashe/website.git
   ```
2. Acesse o diretório do projeto:
   ```bash
   cd raffashe
   ```
3. Instale as dependências:
   ```bash
   flutter pub get
   ```
4. Execute o projeto:
   ```bash
   flutter run
   ```

## Dependências

As principais dependências utilizadas no projeto são:

- [flutter](https://flutter.dev/) - Framework base.
- [velocity_x](https://pub.dev/packages/velocity_x) - Ajuda com widgets e estilos.
- [timelines](https://pub.dev/packages/timelines) - Criar linhas do tempo estilizadas.
- [font_awesome_flutter](https://pub.dev/packages/font_awesome_flutter) - Ícones de Font Awesome.
- [url_launcher](https://pub.dev/packages/url_launcher) - Abrir URLs ou apps externos.
- [flutter_svg](https://pub.dev/packages/flutter_svg) - Renderizar arquivos SVG.

---

Desenvolvido com ❤️ e Flutter.
``` 
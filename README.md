# Minha Saúde Feminina

Aplicativo mobile desenvolvido para auxiliar mulheres no acompanhamento da saúde feminina em diferentes fases da vida, oferecendo informações educativas, acompanhamento de ciclos, sintomas, bem-estar e orientações.

## Sobre o Projeto

O aplicativo busca promover autonomia, informação e autocuidado feminino através de tecnologia acessível e intuitiva. A proposta é auxiliar mulheres a compreenderem melhor:
- ciclo menstrual,
- período fértil,
- TPM,
- saúde hormonal,
- gravidez,
- menopausa,
- autocuidado,
- saúde emocional,
- sintomas recorrentes,
- hábitos saudáveis,
- acompanhamento corporal.

O sistema foi pensado para proporcionar uma experiência acolhedora, educativa e personalizada, respeitando as diferentes fases da vida feminina.

---

# Status do Projeto

Em desenvolvimento

--- 

# Funcionalidades

## Usuário
- Cadastro e login
- Recuperação de senha
- Edição de perfil

## Conteúdo Educativo
- Artigos sobre saúde feminina
- Dicas de autocuidado
- Saúde mental
- Alimentação
- Exercícios físicos
- Bem-estar hormonal

---

# Tecnologias Utilizadas

## Framework
- Flutter 3.24 (Dart)

## Banco de Dados
- Ainda a ser escolhido (App está inicialmente estático)

## State Management
- Riverpod

## Navegação 
- GoRouter

## UI/UX
- Figma

## Versionamento
- Git
- GitHub

---

# Principais Telas do Aplicativo desenvolvidas até agora

- Splash Screen
- Home
- Conteúdo educativo

---

# Protótipo

https://www.figma.com/design/Sukst6YGFJ5CTHUiPzx1aj/Curriculariza%C3%A7%C3%A3o-2026.1?node-id=0-1&t=kybDwZTlE7F6ryS1-0

---

# Estrutura de pastas do Projeto

```
MS-Feminina-Unifebe/
├── lib/                          
│   ├── main.dart                 
│   ├── config/
│   │   └── theme.dart            
│   ├── routes/
│   │   └── app_routes.dart       
│   ├── screens/                   
│   │   ├── splash_screen.dart    
│   │   ├── login_screen.dart    
│   │   ├── register_screen.dart  
│   │   ├── home_screen.dart      
│   │   ├── profile_screen.dart   
│   │   ├── educational_content_screen.dart # Lista de artigos
│   │   └── content/              
│   │       ├── ciclo_menstrual_screen.dart
│   │       ├── tpm_alteracoes_emocionais_screen.dart
│   │       ├── colica_screen.dart
│   │       ├── corrimento_vaginal_screen.dart
│   │       ├── atraso_menstrual_screen.dart
│   │       ├── sangramento_fora_periodo_screen.dart
│   │       ├── dor_ardor_urinario_screen.dart
│   │       ├── cancer_mama_screen.dart
│   │       ├── cancer_colo_utero_screen.dart
│   │       ├── climaterio_menopausa_screen.dart
│   │       ├── autocuidado_habitos_saudaveis_screen.dart
│   │       └── violencia_contra_mulher_screen.dart
│   ├── widgets/
│   │   └── custom_widgets.dart    
│   ├── models/                   
│   └── utils/                   
│
└── assets/                        
    └── images/
                      
```

---

# Futuras Implementações

- Funcionalidade de Login e Registro de usuários
- Calendário menstrual próprio, para o usuário poder acompanhar seu ciclo menstrual com facilidades

---

# Privacidade

Os dados armazenados no aplicativo são de uso pessoal da usuária e não são compartilhados sem autorização.

# 📸 Principais Telas do Aplicativo

| | |
|:---:|:---:|
| **Login** - Autenticação e acesso ao sistema | **Cadastro** - Criação de nova conta de usuário |
| <img width="350" alt="Login" src="https://github.com/user-attachments/assets/3a0a73a9-474c-4bd3-afcd-354325e86127" /> | <img width="350" alt="Cadastro" src="https://github.com/user-attachments/assets/b3d033bd-4d3a-4726-a36e-55dfc1bb5d43" /> |
| **Esqueceu Senha** - Recuperação de acesso da conta | **Conta** - Gerenciamento das informações do usuário |
| <img width="350" alt="EsqueceuSenha" src="https://github.com/user-attachments/assets/4adea1a2-d59a-4c1c-8885-3041ddab2c84" /> | <img width="350" alt="Conta" src="https://github.com/user-attachments/assets/749a7e4d-f9d2-4cad-87e3-36b66c4ea328" /> |
| **Conteúdo 1** - Seção educativa sobre saúde feminina | **Conteúdo 2** - Dicas de bem-estar e autocuidado |
| <img width="350" alt="Conteudo1" src="https://github.com/user-attachments/assets/df133804-1f3f-45b6-a4ef-778a7548308e" /> | <img width="350" alt="Conteudo2" src="https://github.com/user-attachments/assets/f4647823-3aad-4d8e-9078-92eeaedf46e7" /> |
| **Conteúdo N/A** - Conteúdos complementares da plataforma | |
| <img width="350" alt="ConteudoNA" src="https://github.com/user-attachments/assets/da97e7a5-1958-4f0b-858a-f9d4ad184f59" /> | |

---

# Como executar o APP

## Contexto

O app foi desenvolvido e testado usando o emulador de Android Pixel 7 pelo Android Studio. 

Execuções em emuladores IOS e Windows (Web) também estão funcionais 

### 1 Instalar dependências
```bash
flutter pub get
```

### 2 Verificar setup 
```bash
flutter doctor
```

### 3 Executar o app

#### No emulador Android:
```bash
flutter run
```

#### Na web (se desejar):
```bash
flutter run -d chrome
```
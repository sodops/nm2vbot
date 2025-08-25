# 🎵 Audio to Voice Converter Bot

> Telegram bot that converts audio files to voice messages

[![Telegram](https://img.shields.io/badge/Telegram-Bot-blue?logo=telegram)](https://t.me/your_bot_username)
[![Node.js](https://img.shields.io/badge/Node.js-18+-green?logo=node.js)](https://nodejs.org/)
[![TypeScript](https://img.shields.io/badge/TypeScript-5.0+-blue?logo=typescript)](https://www.typescriptlang.org/)
[![MongoDB](https://img.shields.io/badge/MongoDB-6.0+-green?logo=mongodb)](https://www.mongodb.com/)

**🌐 Languages:** [🏠 Main](README.md) | [🇺🇸 English](README_en.md) | [🇺🇿 O'zbek](README_uz.md)

## 📖 About the Bot

This Telegram bot converts audio files sent by users into voice messages and sends them back. The bot converts audio files to **OGA** format and automatically trims files longer than 60 seconds to keep only the first part. Additionally, it stores user statistics in MongoDB.

## ⭐ Features

- 🎧 **Audio to voice conversion** - Supports MP3, WAV, M4A and other formats
- ⏱️ **Auto-trimming** - Files longer than 60 seconds are automatically shortened
- 📊 **User statistics** - Data storage in MongoDB
- 👑 **Admin panel** - `/stats` command for bot owner
- 🌐 **Express server** - With API endpoint
- 🐳 **Docker support** - Easy deployment

## 🚀 Installation

### 📋 Prerequisites

- ![Node.js](https://img.shields.io/badge/Node.js-18+-brightgreen?logo=node.js) (v18 or higher)
- ![FFmpeg](https://img.shields.io/badge/FFmpeg-latest-red?logo=ffmpeg)
- ![MongoDB](https://img.shields.io/badge/MongoDB-6.0+-green?logo=mongodb) (local or cloud)

### 📦 Steps

1. **Clone the repository:**
   ```bash
   git clone https://github.com/sodops/nm2vbot.git
   cd nm2vbot
   ```

2. **Install dependencies:**
   ```bash
   npm install
   ```

3. **Environment setup:**
   
   Create `.env` file:
   ```bash
   cp .env.example .env
   ```
   
   Fill in the following information:
   ```env
   TOKEN=your_telegram_bot_token_here          # Token from @BotFather
   BOT_OWNER_ID=your_telegram_user_id          # Your Telegram ID
   MONGODB_URI=mongodb://localhost:27017       # MongoDB URI
   PORT=3000                                   # Server port
   ```

4. **Start MongoDB:**
   ```bash
   # For local MongoDB
   mongod
   
   # Or with Docker
   docker run -d -p 27017:27017 --name mongodb mongo:latest
   ```

5. **Run the bot:**
   ```bash
   # For development
   npm run dev
   
   # For production
   npm run build && npm start
   ```

## 📱 Usage

### 👤 For Regular Users

1. **Send an audio file** 📎
   - Supported formats: MP3, WAV, M4A, FLAC and others
   - Maximum 60 seconds (longer files are automatically trimmed)

2. **Get the result** 🎵
   - Bot converts audio file to voice message
   - Returned in OGA format

### 🤖 Bot Commands

| Command | Description | Access |
|---------|-------------|--------|
| `/start` | Start bot and get info | Everyone |
| `/help` | Help information | Everyone |
| `/stats` | User statistics | Admin only |

### 👑 For Admin

**View stats:**
```
/stats
```
This command only works for the user matching `BOT_OWNER_ID` in the `.env` file.

## 🐳 Docker Deployment

### Docker Compose (Recommended)

```bash
# Create .env file
cp .env.example .env

# Fill environment variables
# Then run
docker-compose up -d
```

### Plain Docker

```bash
# Build image
docker build -t nm2vbot .

# Run container
docker run -d \
  --name nm2vbot \
  -e TOKEN=your_bot_token \
  -e BOT_OWNER_ID=your_user_id \
  -e MONGODB_URI=your_mongodb_uri \
  nm2vbot
```

## ☁️ Cloud Deployment

### Render.com

1. **Connect repository to Render**
2. **Set environment variables:**
   - `TOKEN` - Bot token
   - `BOT_OWNER_ID` - Admin user ID
   - `MONGODB_URI` - MongoDB connection string
3. **Deploy** 🚀

### Other platforms

- **Heroku** - Add `Procfile`: `web: npm start`
- **Railway** - Auto deploy
- **Vercel** - As serverless function

## 🛠️ Technical Information

### Tech Stack

| Technology | Version | Purpose |
|------------|---------|---------|
| ![Node.js](https://img.shields.io/badge/Node.js-18+-green?logo=node.js) | 18+ | Runtime environment |
| ![TypeScript](https://img.shields.io/badge/TypeScript-5.0+-blue?logo=typescript) | 5.0+ | Programming language |
| ![Grammy](https://img.shields.io/badge/Grammy-1.16+-yellow) | 1.16+ | Telegram bot framework |
| ![MongoDB](https://img.shields.io/badge/MongoDB-6.0+-green?logo=mongodb) | 6.0+ | Database |
| ![Express](https://img.shields.io/badge/Express-4.18+-lightgrey?logo=express) | 4.18+ | Web server |
| ![FFmpeg](https://img.shields.io/badge/FFmpeg-latest-red?logo=ffmpeg) | Latest | Audio conversion |

### Project Structure

```
nm2vbot/
├── 📄 bot.ts              # Main bot code
├── 📦 package.json        # Dependencies
├── ⚙️ tsconfig.json       # TypeScript config
├── 🐳 Dockerfile          # Docker image
├── 🐳 compose.yaml        # Docker compose
├── ☁️ render.yaml         # Render.com deploy
├── 📝 README.md           # Main documentation (Language selector)
├── 📝 README_en.md        # Documentation (English)
├── 📝 README_uz.md        # Documentation (Uzbek)
├── 🔧 .env.example        # Environment variables template
└── 🚫 .gitignore          # Git ignore files
```

## ❗ Troubleshooting

### Common Issues

| Problem | Cause | Solution |
|---------|-------|----------|
| 🚫 **FFmpeg not found** | FFmpeg not installed | `apt install ffmpeg` or use Docker |
| 🔌 **MongoDB not connecting** | MongoDB not running | Run `mongod` or check connection string |
| 📝 **TypeScript errors** | Dependencies outdated | Run `npm install` again |
| 🤖 **Bot not responding** | Wrong token | Check `TOKEN` in `.env` file |
| 🎵 **Audio not accepted** | Voice message sent | Send audio **file** instead |

### Debug Mode

```bash
# Run with debug logs
DEBUG=* npm run dev

# Or only bot logs
DEBUG=bot:* npm run dev
```

## 🤝 Contributing

We welcome contributions to the project!

### Steps:

1. **Fork** 🍴
2. **Clone** 📥
3. **Create branch** 🌿
4. **Make changes** ✏️
5. **Push** 🚀
6. **Open Pull Request** 📬

### Code Style

- Use TypeScript
- Follow ESLint and Prettier formatting
- Commit messages follow [Conventional Commits](https://conventionalcommits.org/)

## 📄 License

This project is distributed under the [MIT License](LICENSE).

## 🌟 Acknowledgments

- [Grammy](https://grammy.dev/) - Telegram bot framework
- [FFmpeg](https://ffmpeg.org/) - Audio processing
- [MongoDB](https://www.mongodb.com/) - Database
- [TypeScript](https://www.typescriptlang.org/) - Type safety

---

## 📞 Contact

- 👨‍💻 **Author:** [Sodiq](https://t.me/sodops)
- 🐛 **Bug report:** [Issues](https://github.com/sodops/nm2vbot/issues)
- 💡 **Feature request:** [Discussions](https://github.com/sodops/nm2vbot/discussions)

---

<div align="center">

**⭐ If you like this project, give it a star!**

[![GitHub stars](https://img.shields.io/github/stars/sodops/nm2vbot?style=social)](https://github.com/sodops/nm2vbot/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/sodops/nm2vbot?style=social)](https://github.com/sodops/nm2vbot/network)

**Made with ❤️ by [Sodiq](https://t.me/sodops)**

</div>

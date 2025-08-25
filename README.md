# 🎵 Audio to Voice Converter Bot

> Telegram bot that converts audio files to voice messages

[![Telegram](https://img.shields.io/badge/Telegram-Bot-blue?logo=telegram)](https://t.me/your_bot_username)
[![Node.js](https://img.shields.io/badge/Node.js-18+-green?logo=node.js)](https://nodejs.org/)
[![TypeScript](https://img.shields.io/badge/TypeScript-5.0+-blue?logo=typescript)](https://www.typescriptlang.org/)
[![MongoDB](https://img.shields.io/badge/MongoDB-6.0+-green?logo=mongodb)](https://www.mongodb.com/)

## 🌐 Choose Your Language / Tilni tanlang

- **🇺🇸 [English Documentation](README_en.md)**
- **🇺🇿 [O'zbek tilida hujjatlar](README_uz.md)**

---

## 📖 Quick Overview

This Telegram bot converts audio files to voice messages using FFmpeg and stores user statistics in MongoDB.

**Key Features:**
- 🎧 Audio to voice conversion (MP3, WAV, M4A → OGA)
- ⏱️ Auto-trim files longer than 60 seconds
- 📊 User statistics with MongoDB
- 👑 Admin commands
- 🐳 Docker support

## 🚀 Quick Start

```bash
git clone https://github.com/sodops/nm2vbot.git
cd nm2vbot
cp .env.example .env
# Fill your environment variables
npm install
npm run dev
```

## 📱 Bot Commands

| Command | Description |
|---------|-------------|
| `/start` | Start bot and get info |
| `/help` | Show help information |
| `/stats` | View user statistics (admin only) |

---

## 📞 Contact

- 👨‍💻 **Author:** [Sodiq](https://t.me/sodops)
- 🐛 **Issues:** [GitHub Issues](https://github.com/sodops/nm2vbot/issues)

---

<div align="center">

**⭐ If you like this project, give it a star!**

[![GitHub stars](https://img.shields.io/github/stars/sodops/nm2vbot?style=social)](https://github.com/sodops/nm2vbot/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/sodops/nm2vbot?style=social)](https://github.com/sodops/nm2vbot/network)

**Made with ❤️ by [Sodiq](https://t.me/sodops)**

</div>

# 🎵 Audio to Voice Converter Bot

> Audio fayllarni ovozli xabarga aylantiradigan Telegram bot

[![Telegram](https://img.shields.io/badge/Telegram-Bot-blue?logo=telegram)](https://t.me/your_bot_username)
[![Node.js](https://img.shields.io/badge/Node.js-18+-green?logo=node.js)](https://nodejs.org/)
[![TypeScript](https://img.shields.io/badge/TypeScript-5.0+-blue?logo=typescript)](https://www.typescriptlang.org/)
[![MongoDB](https://img.shields.io/badge/MongoDB-6.0+-green?logo=mongodb)](https://www.mongodb.com/)

**🌐 Tillar:** [🏠 Asosiy](README.md) | [🇺🇸 English](README_en.md) | [🇺🇿 O'zbek](README_uz.md)

## 📖 Bot haqida

Ushbu Telegram boti foydalanuvchilar yuborgan audio fayllarni ovozli xabarga (voice message) aylantirib qaytaradi. Bot audio faylni **OGA** formatiga o'girib, 60 soniyadan uzun bo'lsa faqat birinchi qismini oladi. Shuningdek, bot foydalanuvchi statistikasini MongoDB da saqlaydi.

## ⭐ Imkoniyatlar

- 🎧 **Audio fayllarni ovozli xabarga aylantirish** - MP3, WAV, M4A va boshqa formatlar
- ⏱️ **Avtomatik qisqartirish** - 60 soniyadan uzun audio fayllar
- 📊 **Foydalanuvchi statistikasi** - MongoDB da ma'lumotlar saqlash
- 👑 **Admin panel** - Bot egasi uchun `/stats` buyrug'i
- 🌐 **Express server** - API endpoint bilan
- 🐳 **Docker support** - Oson deploy qilish uchun

## 🚀 O'rnatish

### 📋 Talablar

- ![Node.js](https://img.shields.io/badge/Node.js-18+-brightgreen?logo=node.js) (v18 yoki undan yuqori)
- ![FFmpeg](https://img.shields.io/badge/FFmpeg-latest-red?logo=ffmpeg) 
- ![MongoDB](https://img.shields.io/badge/MongoDB-6.0+-green?logo=mongodb) (mahalliy yoki cloud)

### 📦 Qadamlar

1. **Repozitoriyani klonlash:**
   ```bash
   git clone https://github.com/sodops/nm2vbot.git
   cd nm2vbot
   ```

2. **Bog'liqliklarni o'rnatish:**
   ```bash
   npm install
   ```

3. **Muhit sozlamalari:**
   
   `.env` faylini yarating:
   ```bash
   cp .env.example .env
   ```
   
   Va quyidagi ma'lumotlarni to'ldiring:
   ```env
   TOKEN=your_telegram_bot_token_here          # @BotFather dan olingan token
   BOT_OWNER_ID=your_telegram_user_id          # Sizning Telegram ID
   MONGODB_URI=mongodb://localhost:27017       # MongoDB manzili
   PORT=3000                                   # Server porti
   ```

4. **MongoDB ni ishga tushiring:**
   ```bash
   # Mahalliy MongoDB uchun
   mongod
   
   # Yoki Docker bilan
   docker run -d -p 27017:27017 --name mongodb mongo:latest
   ```

5. **Botni ishga tushirish:**
   ```bash
   # Development uchun
   npm run dev
   
   # Production uchun
   npm run build && npm start
   ```

## 📱 Foydalanish

### 👤 Oddiy foydalanuvchilar uchun

1. **Audio fayl yuboring** 📎
   - Qo'llab-quvvatlanadigan formatlar: MP3, WAV, M4A, FLAC va boshqalar
   - Maksimal 60 soniya (uzun bo'lsa avtomatik qisqartiriladi)

2. **Natijani oling** 🎵
   - Bot audio faylni ovozli xabarga aylantiradi
   - OGA formatida qaytariladi

### 🤖 Bot buyruqlari

| Buyruq | Tavsif | Kimga |
|--------|--------|-------|
| `/start` | Botni boshlash va ma'lumot olish | Hamma |
| `/help` | Yordam ma'lumotlari | Hamma |
| `/stats` | Foydalanuvchilar statistikasi | Faqat admin |

### 👑 Admin uchun

**Stats ko'rish:**
```
/stats
```
Bu buyruq faqat `.env` faylidagi `BOT_OWNER_ID` ga mos kelgan foydalanuvchi uchun ishlaydi.

## 🐳 Docker bilan ishga tushirish

### Docker Compose (Tavsiya etiladi)

```bash
# .env faylini yarating
cp .env.example .env

# Environment variables ni to'ldiring
# Keyin ishga tushiring
docker-compose up -d
```

### Oddiy Docker

```bash
# Image yaratish
docker build -t nm2vbot .

# Konteyner ishga tushirish
docker run -d \
  --name nm2vbot \
  -e TOKEN=your_bot_token \
  -e BOT_OWNER_ID=your_user_id \
  -e MONGODB_URI=your_mongodb_uri \
  nm2vbot
```

## ☁️ Deploy qilish

### Render.com

1. **Repository ni Render ga ulang**
2. **Environment variables ni sozlang:**
   - `TOKEN` - Bot token
   - `BOT_OWNER_ID` - Admin user ID
   - `MONGODB_URI` - MongoDB connection string
3. **Deploy qiling** 🚀

### Boshqa platformalar

- **Heroku** - `Procfile` qo'shing: `web: npm start`
- **Railway** - Avtomatik deploy
- **Vercel** - Serverless function sifatida

## 🛠️ Texnik ma'lumotlar

### Tech Stack

| Texnologiya | Versiya | Maqsad |
|-------------|---------|--------|
| ![Node.js](https://img.shields.io/badge/Node.js-18+-green?logo=node.js) | 18+ | Runtime environment |
| ![TypeScript](https://img.shields.io/badge/TypeScript-5.0+-blue?logo=typescript) | 5.0+ | Dasturlash tili |
| ![Grammy](https://img.shields.io/badge/Grammy-1.16+-yellow) | 1.16+ | Telegram bot framework |
| ![MongoDB](https://img.shields.io/badge/MongoDB-6.0+-green?logo=mongodb) | 6.0+ | Ma'lumotlar bazasi |
| ![Express](https://img.shields.io/badge/Express-4.18+-lightgrey?logo=express) | 4.18+ | Web server |
| ![FFmpeg](https://img.shields.io/badge/FFmpeg-latest-red?logo=ffmpeg) | Latest | Audio konvertatsiya |

### Loyiha tuzilishi

```
nm2vbot/
├── 📄 bot.ts              # Asosiy bot kodi
├── 📦 package.json        # Dependencies
├── ⚙️ tsconfig.json       # TypeScript config
├── 🐳 Dockerfile          # Docker image
├── 🐳 compose.yaml        # Docker compose
├── ☁️ render.yaml         # Render.com deploy
├── 📝 README.md           # Asosiy hujjatlar (Til tanlash)
├── 📝 README_en.md        # Hujjatlar (Inglizcha)
├── 📝 README_uz.md        # Hujjatlar (O'zbekcha)
├── 🔧 .env.example        # Environment variables namunasi
└── 🚫 .gitignore          # Git ignore fayllar
```

## ❗ Xatolarni bartaraf qilish

### Keng tarqalgan muammolar

| Muammo | Sabab | Yechim |
|--------|-------|--------|
| 🚫 **FFmpeg topilmadi** | FFmpeg o'rnatilmagan | `apt install ffmpeg` yoki Docker ishlatish |
| 🔌 **MongoDB ulanmayapti** | MongoDB ishlamayapti | `mongod` buyrug'i yoki connection string tekshirish |
| 📝 **TypeScript xatolari** | Dependencies yangilanmagan | `npm install` qayta ishga tushirish |
| 🤖 **Bot javob bermayapti** | Noto'g'ri token | `.env` faylidagi `TOKEN` tekshirish |
| 🎵 **Audio qabul qilmayapti** | Voice message yuborilgan | Audio **fayl** yuborish kerak |

### Debug rejimi

```bash
# Debug loglar bilan ishga tushirish
DEBUG=* npm run dev

# Yoki faqat bot loglari
DEBUG=bot:* npm run dev
```

## 🤝 Hissa qo'shish

Loyihaga hissa qo'shishingizdan xursandmiz! 

### Qadamlar:

1. **Fork qiling** 🍴
2. **Clone qiling** 📥
3. **Branch yarating** 🌿
4. **O'zgarishlar kiriting** ✏️
5. **Push qiling** 🚀
6. **Pull Request oching** 📬

### Code Style

- TypeScript ishlatamiz
- ESLint va Prettier formatni kuzatamiz
- Commit messages [Conventional Commits](https://conventionalcommits.org/) ga muvofiq

## 📄 Litsenziya

Bu loyiha [MIT License](LICENSE) ostida tarqatiladi.

## 🌟 Minnatdorchilik

- [Grammy](https://grammy.dev/) - Telegram bot framework
- [FFmpeg](https://ffmpeg.org/) - Audio processing
- [MongoDB](https://www.mongodb.com/) - Database
- [TypeScript](https://www.typescriptlang.org/) - Type safety

---

## 📞 Bog'lanish

- 👨‍💻 **Muallif:** [Sodiq](https://t.me/sodops)
- 🐛 **Bug report:** [Issues](https://github.com/sodops/nm2vbot/issues)
- 💡 **Feature request:** [Discussions](https://github.com/sodops/nm2vbot/discussions)

---

<div align="center">

**⭐ Agar loyiha yoqsa, star bosing!**

[![GitHub stars](https://img.shields.io/github/stars/sodops/nm2vbot?style=social)](https://github.com/sodops/nm2vbot/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/sodops/nm2vbot?style=social)](https://github.com/sodops/nm2vbot/network)

**Made with ❤️ by [Sodiq](https://t.me/sodops)**

</div>

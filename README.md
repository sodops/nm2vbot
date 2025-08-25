# Audio to Voice Converter Bot

## Bot haqida
Ushbu Telegram boti foydalanuvchilar yuborgan audio fayllarni ovozli xabarga (voice message) aylantirib qaytaradi. Bot audio faylni OGA formatiga o'girib, 60 soniyadan uzun bo'lsa faqat birinchi qismini oladi. Shuningdek, bot foydalanuvchi statistikasini MongoDB da saqlaydi.

## Imkoniyatlar
- Audio fayllarni ovozli xabarga (voice message) aylantirish
- 60 soniyadan uzun audio fayllarni avtomatik qisqartirish
- Foydalanuvchi ma'lumotlarini MongoDB da saqlash
- Bot egasi uchun `/stats` buyrug'i orqali statistikani ko'rish
- Express server bilan API endpoint

## O'rnatish

### Talablar
- Node.js (v16 yoki undan yuqori)
- FFmpeg
- MongoDB (mahalliy yoki cloud)

### Qadamlar
1. Repozitoriyani klonlash:
   ```bash
   git clone https://github.com/sodops/nm2vbot.git
   cd nm2vbot
   ```

2. Bog'liqliklarni o'rnatish:
   ```bash
   npm install
   ```

3. Muhit sozlamalari:
   - `.env` faylini yarating va quyidagi sozlamalarni qo'shing:
     ```env
     TOKEN=your_telegram_bot_token_here
     BOT_OWNER_ID=your_telegram_user_id
     MONGODB_URI=mongodb://localhost:27017
     PORT=3000
     ```
   - `TOKEN`ni Telegram'dagi @BotFather orqali olishingiz mumkin
   - `BOT_OWNER_ID` - sizning Telegram user ID'ingiz (statsni ko'rish uchun)
   - `MONGODB_URI` - MongoDB ulanish manzili

4. MongoDB ni ishga tushiring (agar mahalliy foydalansangiz):
   ```bash
   mongod
   ```

5. Botni ishga tushirish:
   ```bash
   npm run dev
   ```

## Foydalanish

### Oddiy foydalanuvchilar uchun
- Botga audio fayl yuboring (MP3, WAV, M4A va boshqa formatlar)
- Bot uni ovozli xabarga aylantirib qaytaradi
- 60 soniyadan uzun audio fayllar avtomatik qisqartiriladi

### Bot buyruqlari
- `/start` - Botni ishga tushirish va ma'lumot olish
- `/help` - Yordam ma'lumotlari

### Bot egasi uchun
- `/stats` buyrug'i yordamida barcha foydalanuvchilar statistikasini ko'ring
- Faqat `.env` faylidagi `BOT_OWNER_ID` ga mos kelgan foydalanuvchi statsni ko'ra oladi

## Xatolarni bartaraf qilish
- **FFmpeg topilmadi**: FFmpeg o'rnatilganligiga ishonch hosil qiling
- **MongoDB ulanmayapti**: MongoDB ishga tushganligini va `MONGODB_URI` to'g'ri ekanligini tekshiring
- **TypeScript xatolari**: `npm install` orqali barcha bog'liqliklarni yangilang
- **Bot javob bermayapti**: `.env` faylidagi `TOKEN` to'g'ri ekanligini tekshiring
- **Voice o'rniga audio yuborish kerak**: Bot faqat audio fayllarni qabul qiladi, voice message emas

## Texnik ma'lumotlar
- **Node.js** - Asosiy runtime
- **Grammy** - Telegram bot framework
- **FFmpeg** - Audio konvertatsiya
- **MongoDB** - Ma'lumotlar bazasi
- **Express** - Web server
- **TypeScript** - Dasturlash tili

## Hissa qo'shish
1. Repozitoriyani fork qiling
2. Yangi branch yarating:
   ```bash
   git checkout -b feature/your-feature
   ```
3. O'zgarishlarni commit qiling:
   ```bash
   git commit -m "Add your feature"
   ```
4. Push qiling:
   ```bash
   git push origin feature/your-feature
   ```
5. Pull request oching

## Litsenziya
MIT Litsenziyasi ostida tarqatiladi. Batafsil ma'lumot uchun LICENSE faylini ko'ring.

---

# Audio to Voice Converter Bot

## About the Bot
This Telegram bot converts audio files sent by users into voice messages and sends them back. The bot converts audio files to OGA format and automatically trims files longer than 60 seconds to keep only the first part. Additionally, it stores user statistics in MongoDB.

## Features
- Converts audio files to voice messages
- Automatically trims audio files longer than 60 seconds
- Stores user information in MongoDB
- Allows bot owner to view user statistics via the `/stats` command
- Express server with API endpoint

## Installation

### Prerequisites
- Node.js (v16 or higher)
- FFmpeg
- MongoDB (local or cloud)

### Steps
1. Clone the repository:
   ```bash
   git clone https://github.com/sodops/nm2vbot.git
   cd nm2vbot
   ```

2. Install dependencies:
   ```bash
   npm install
   ```

3. Set up environment variables:
   - Create a `.env` file and add the following settings:
     ```env
     TOKEN=your_telegram_bot_token_here
     BOT_OWNER_ID=your_telegram_user_id
     MONGODB_URI=mongodb://localhost:27017
     PORT=3000
     ```
   - Get `TOKEN` from Telegram's @BotFather
   - `BOT_OWNER_ID` - your Telegram user ID (for viewing stats)
   - `MONGODB_URI` - MongoDB connection string

4. Start MongoDB (if using local installation):
   ```bash
   mongod
   ```

5. Run the bot:
   ```bash
   npm run dev
   ```

## Usage

### For Regular Users
- Send an audio file to the bot (MP3, WAV, M4A and other formats)
- The bot will convert it to a voice message and send it back
- Audio files longer than 60 seconds are automatically trimmed

### Bot Commands
- `/start` - Start the bot and get information
- `/help` - Help information

### For Bot Owner
- Use the `/stats` command to view statistics of all users
- Only the user matching `BOT_OWNER_ID` in the `.env` file can view stats

## Troubleshooting
- **FFmpeg not found**: Ensure FFmpeg is installed
- **MongoDB not connecting**: Check that MongoDB is running and `MONGODB_URI` is correct
- **TypeScript errors**: Run `npm install` to update dependencies
- **Bot not responding**: Verify the `TOKEN` in the `.env` file is correct
- **Need to send audio files, not voice**: The bot only accepts audio files, not voice messages

## Technical Information
- **Node.js** - Main runtime
- **Grammy** - Telegram bot framework
- **FFmpeg** - Audio conversion
- **MongoDB** - Database
- **Express** - Web server
- **TypeScript** - Programming language

## Contributing
1. Fork the repository
2. Create a new branch:
   ```bash
   git checkout -b feature/your-feature
   ```
3. Commit your changes:
   ```bash
   git commit -m "Add your feature"
   ```
4. Push to the branch:
   ```bash
   git push origin feature/your-feature
   ```
5. Open a pull request

## License
Distributed under the MIT License. See LICENSE for more information.

---

**Made by [Sodiq](https://t.me/sodops)**

# WebDroidX - Android Screen Mirroring untuk OpenWrt

[![Telegram Group](https://img.shields.io/badge/Telegram-2CA5E0?style=for-the-badge&logo=telegram&logoColor=white)](https://t.me/+TuLCASzJrVJmNzM1)
[![GitHub Downloads](https://img.shields.io/github/downloads/bobbyunknown/WebDroidX/total?style=for-the-badge)](https://github.com/bobbyunknown/WebDroidX)
[![GitHub Release](https://img.shields.io/github/v/release/bobbyunknown/WebDroidX?style=for-the-badge)](https://github.com/bobbyunknown/WebDroidX/releases)

> **Language / Bahasa:** [🇺🇸 English](README-EN.md) | 🇮🇩 **Bahasa Indonesia**

WebDroidX adalah solusi screen mirroring berbasis web yang memungkinkan Anda mengontrol dan melihat perangkat Android melalui browser web. Project ini dikembangkan khusus untuk OpenWrt/ImmortalWrt dengan dukungan multi-architecture.

## 🚀 Fitur Utama

- **Screen Mirroring**: Tampilkan layar Android secara real-time di browser
- **Remote Control**: Kontrol perangkat Android melalui interface web
- **Multi-Architecture**: Mendukung x86_64 dan aarch64
- **Web-based**: Tidak perlu install aplikasi tambahan di client
- **OpenWrt Integration**: Terintegrasi penuh dengan LuCI interface

## 📸 Screenshots

<details>
<summary>Home Interface</summary>

![Home Interface](assets/home.png)
![Home Interface](assets/home2.png)
</details>

<details>
<summary>Configuration Page</summary>

![Configuration](assets/configs.png)
</details>

<details>
<summary>Android Device Control</summary>

![Android Control](assets/android.png)
</details>

## 📦 Struktur Project

```
WebDroidX/
└── luci-app-webdroidx/     # LuCI web interface
    ├── htdocs/            # Static web files
    ├── etc/               # Configuration files
    └── usr/               # System files
```

## 🛠️ Komponen

### LuCI App
- **Web Interface**: Interface berbasis web untuk konfigurasi
- **Init Script**: Service management untuk OpenWrt
- **Configuration**: File konfigurasi sistem

## 📋 Persyaratan Sistem

- **OpenWrt/ImmortalWrt** dengan LuCI
- **Architecture**: x86_64 atau aarch64
- **Dependencies**: 
  - adb (Android Debug Bridge)
  - screen (terminal multiplexer)
- **Storage**: ~15MB ruang kosong

## 🔧 Instalasi

### 1. Install Core

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/bobbyunknown/WebDroidX/refs/heads/main/install.sh)"
```

### 2. Install Package

```bash
# Download luci app di release
# Install luci-app
opkg install luci-app-webdroidx_*.ipk
```

## ⚙️ Konfigurasi

### 1. Akses Web Interface
- Buka browser dan akses: `http://[router-ip]/cgi-bin/luci/admin/services/webdroidx`
- Login dengan kredensial OpenWrt Anda

### 2. Konfigurasi Perangkat Android
- Aktifkan **Developer Options** di Android
- Aktifkan **USB Debugging**
- Hubungkan perangkat via USB atau WiFi ADB

### 3. Start Service
```bash
# Start webdroidx service
/etc/init.d/webdroidx start

# Enable auto-start
/etc/init.d/webdroidx enable
```

## 🎯 Penggunaan

1. **Hubungkan Perangkat**: Pastikan Android device terhubung via ADB
2. **Start Service**: Jalankan webdroidx service melalui LuCI atau command line
3. **Akses Interface**: Buka web interface untuk mulai screen mirroring
4. **Control Device**: Gunakan mouse dan keyboard untuk mengontrol Android

## 🔍 Troubleshooting

### Device Tidak Terdeteksi
```bash
# Check ADB connection
adb devices

# Restart ADB server
adb kill-server
adb start-server
```

### Service Tidak Berjalan
```bash
# Check service status
/etc/init.d/webdroidx status

# Check logs
logread | grep webdroidx
```

### Port Conflict
- Default port: 8080
- Ubah port di konfigurasi jika terjadi konflik

## 🏗️ Development

### Build Requirements
- OpenWrt SDK
- Make tools

### Architecture Support
Project ini mendukung:
- **x86_64**: Intel/AMD 64-bit
- **aarch64**: ARM 64-bit (Raspberry Pi 4, dll)

## 📄 Lisensi

Project ini dilisensikan under MIT License. Lihat file LICENSE untuk detail.

## 👨‍💻 Kontributor

- **BobbyUnknown** - Developer utama
- **Community** - Bug reports dan feature requests


## 📞 Support

Jika Anda mengalami masalah atau memiliki pertanyaan:
1. Check dokumentasi troubleshooting di atas
2. Buat issue di GitHub repository
3. Join komunitas OpenWrt untuk diskusi

---

**WebDroidX** - Bringing Android screen mirroring to your OpenWrt router! 🚀
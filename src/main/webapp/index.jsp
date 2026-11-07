<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NEXUS — Shop The Future</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800&family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
/* ============================================================
   ROOT — Google-inspired black theme
   ============================================================ */
* { margin: 0; padding: 0; box-sizing: border-box; }
:root {
  --bg: #050505;
  --surface: #0d0d0d;
  --card: #121212;
  --border: rgba(255,255,255,0.08);
  --border-hi: rgba(255,255,255,0.16);
  --text: #ffffff;
  --muted: #9aa0a6;
  --dim: #5f6368;
  --blue: #4285F4;
  --red: #EA4335;
  --yellow: #FBBC05;
  --green: #34A853;
  --spring: cubic-bezier(0.34, 1.56, 0.64, 1);
  --smooth: cubic-bezier(0.4, 0, 0.2, 1);
  --container: 1320px;
}
html { scroll-behavior: smooth; }
body {
  font-family: 'Roboto', sans-serif;
  background: var(--bg);
  color: var(--text);
  line-height: 1.6;
  overflow-x: hidden;
  -webkit-font-smoothing: antialiased;
}
body.loading { overflow: hidden; }
a { color: inherit; text-decoration: none; }
img { display: block; max-width: 100%; }
button { cursor: pointer; font-family: inherit; border: none; background: none; color: inherit; }
.container { width: 100%; max-width: var(--container); margin: 0 auto; padding: 0 32px; }
h1, h2, h3, h4, h5 { font-family: 'Poppins', sans-serif; font-weight: 700; letter-spacing: -0.02em; line-height: 1.15; }

/* Scrollbar */
::-webkit-scrollbar { width: 8px; }
::-webkit-scrollbar-track { background: var(--bg); }
::-webkit-scrollbar-thumb { background: #2a2a2a; border-radius: 4px; }
::-webkit-scrollbar-thumb:hover { background: var(--blue); }

/* ============================================================
   CUSTOM CURSOR
   ============================================================ */
.cursor-dot, .cursor-ring {
  position: fixed; top: 0; left: 0;
  pointer-events: none; z-index: 99999;
  transform: translate(-50%, -50%);
  border-radius: 50%;
}
.cursor-dot {
  width: 8px; height: 8px;
  background: #fff;
  transition: width 0.25s var(--spring), height 0.25s var(--spring), background 0.25s;
  mix-blend-mode: difference;
}
.cursor-ring {
  width: 38px; height: 38px;
  border: 1.5px solid rgba(255,255,255,0.4);
  transition: width 0.35s var(--spring), height 0.35s var(--spring), border-color 0.3s, background 0.3s;
}
.cursor-ring.hover {
  width: 64px; height: 64px;
  border-color: var(--blue);
  background: rgba(66,133,244,0.1);
}
.cursor-dot.hover { width: 0; height: 0; }

@media (pointer: coarse) {
  .cursor-dot, .cursor-ring { display: none; }
  body { cursor: auto; }
}

/* ============================================================
   PRELOADER
   ============================================================ */
.preloader {
  position: fixed; inset: 0;
  background: var(--bg);
  z-index: 999999;
  display: flex; flex-direction: column;
  align-items: center; justify-content: center;
  gap: 48px;
  transition: opacity 0.7s var(--smooth), visibility 0.7s;
}
.preloader.done { opacity: 0; visibility: hidden; }
.preloader-logo {
  display: flex; gap: 6px;
  font-family: 'Poppins', sans-serif;
  font-size: clamp(2.5rem, 6vw, 4rem);
  font-weight: 800; letter-spacing: -0.04em;
}
.preloader-logo span {
  display: inline-block;
  opacity: 0; transform: translateY(40px) scale(0.4) rotate(-20deg);
  animation: letterPop 0.8s var(--spring) forwards;
}
.preloader-logo span:nth-child(1) { color: var(--blue); animation-delay: 0.1s; }
.preloader-logo span:nth-child(2) { color: var(--red); animation-delay: 0.2s; }
.preloader-logo span:nth-child(3) { color: var(--yellow); animation-delay: 0.3s; }
.preloader-logo span:nth-child(4) { color: var(--green); animation-delay: 0.4s; }
.preloader-logo span:nth-child(5) { color: #fff; animation-delay: 0.5s; }

@keyframes letterPop {
  0% { opacity: 0; transform: translateY(40px) scale(0.4) rotate(-20deg); }
  100% { opacity: 1; transform: translateY(0) scale(1) rotate(0); }
}

.preloader-dots { display: flex; gap: 12px; }
.preloader-dots span {
  width: 14px; height: 14px; border-radius: 50%;
  animation: dotBounce 1.4s ease-in-out infinite;
}
.preloader-dots span:nth-child(1) { background: var(--blue); animation-delay: 0s; }
.preloader-dots span:nth-child(2) { background: var(--red); animation-delay: 0.15s; }
.preloader-dots span:nth-child(3) { background: var(--yellow); animation-delay: 0.3s; }
.preloader-dots span:nth-child(4) { background: var(--green); animation-delay: 0.45s; }

@keyframes dotBounce {
  0%, 100% { transform: translateY(0) scale(1); opacity: 0.4; }
  50% { transform: translateY(-18px) scale(1.15); opacity: 1; }
}

/* ============================================================
   SCROLL PROGRESS BAR
   ============================================================ */
.progress-bar {
  position: fixed; top: 0; left: 0;
  height: 3px; width: 0%;
  background: linear-gradient(90deg, var(--blue), var(--red), var(--yellow), var(--green));
  z-index: 10000;
  transition: width 0.08s linear;
  box-shadow: 0 0 12px rgba(66,133,244,0.6);
}

/* ============================================================
   HEADER
   ============================================================ */
header {
  position: sticky; top: 0; z-index: 200;
  background: rgba(5,5,5,0.7);
  backdrop-filter: saturate(180%) blur(24px);
  -webkit-backdrop-filter: saturate(180%) blur(24px);
  border-bottom: 1px solid var(--border);
  transition: background 0.3s;
}
.header-inner {
  display: flex; align-items: center; justify-content: space-between;
  gap: 24px; padding: 16px 0; min-height: 76px;
}
.brand {
  display: flex; align-items: center; gap: 4px;
  font-family: 'Poppins', sans-serif;
  font-size: 1.6rem; font-weight: 800;
  letter-spacing: -0.05em;
  flex-shrink: 0;
}
.brand span:nth-child(1) { color: var(--blue); }
.brand span:nth-child(2) { color: var(--red); }
.brand span:nth-child(3) { color: var(--yellow); }
.brand span:nth-child(4) { color: var(--green); }
.brand span:nth-child(5) { color: #fff; }
.brand:hover span {
  animation: brandWiggle 0.5s var(--spring);
}
@keyframes brandWiggle {
  0%, 100% { transform: translateY(0); }
  50% { transform: translateY(-6px); }
}

nav.main-nav ul {
  display: flex; gap: 4px; list-style: none; align-items: center;
}
nav.main-nav li a {
  position: relative;
  display: flex; align-items: center; gap: 8px;
  padding: 10px 16px;
  font-size: 0.9rem; font-weight: 500;
  color: var(--muted);
  border-radius: 999px;
  transition: color 0.25s var(--smooth), background 0.25s;
}
nav.main-nav li a::after {
  content: '';
  position: absolute; bottom: 4px; left: 50%;
  width: 0; height: 2px;
  background: linear-gradient(90deg, var(--blue), var(--red));
  border-radius: 2px;
  transform: translateX(-50%);
  transition: width 0.3s var(--spring);
}
nav.main-nav li a:hover { color: #fff; background: rgba(255,255,255,0.04); }
nav.main-nav li a:hover::after { width: 20px; }

.header-actions { display: flex; align-items: center; gap: 4px; flex-shrink: 0; }
.header-actions .icon-btn {
  position: relative;
  width: 44px; height: 44px;
  display: grid; place-items: center;
  font-size: 1.05rem;
  color: var(--muted);
  border-radius: 50%;
  transition: all 0.25s var(--spring);
}
.header-actions .icon-btn:hover {
  color: #fff;
  background: rgba(255,255,255,0.06);
  transform: translateY(-2px) scale(1.08);
}

.cart-wrap { position: relative; }
.cart-count {
  position: absolute; top: 4px; right: 2px;
  background: var(--red); color: #fff;
  font-size: 0.65rem; font-weight: 700;
  min-width: 18px; height: 18px;
  padding: 0 5px;
  border-radius: 999px;
  display: grid; place-items: center;
  border: 2px solid var(--bg);
  transition: transform 0.3s var(--spring);
}
.cart-count.pop { transform: scale(1.5); }

.mobile-toggle {
  display: none;
  width: 44px; height: 44px;
  place-items: center;
  font-size: 1.1rem;
  color: #fff;
  border-radius: 50%;
  transition: background 0.25s;
}
.mobile-toggle:hover { background: rgba(255,255,255,0.06); }

#mobileMenu {
  display: none;
  background: var(--surface);
  border-top: 1px solid var(--border);
  padding: 12px 0 24px;
}
#mobileMenu ul {
  list-style: none; display: flex; flex-direction: column; gap: 2px;
}
#mobileMenu ul li a {
  display: flex; align-items: center; gap: 12px;
  padding: 14px 18px;
  font-size: 0.95rem;
  color: var(--muted);
  border-radius: 12px;
  transition: all 0.25s;
}
#mobileMenu ul li a:hover { color: #fff; background: rgba(255,255,255,0.05); }
#mobileMenu ul li a i { width: 20px; }

/* ============================================================
   HERO
   ============================================================ */
.hero {
  position: relative;
  min-height: 92vh;
  display: flex; align-items: center;
  padding: 80px 0 120px;
  overflow: hidden;
}
.hero::before {
  content: '';
  position: absolute; inset: 0;
  background-image:
    linear-gradient(rgba(255,255,255,0.02) 1px, transparent 1px),
    linear-gradient(90deg, rgba(255,255,255,0.02) 1px, transparent 1px);
  background-size: 64px 64px;
  mask-image: radial-gradient(ellipse at center, black 30%, transparent 75%);
  -webkit-mask-image: radial-gradient(ellipse at center, black 30%, transparent 75%);
  pointer-events: none;
}
.hero .container { position: relative; z-index: 2; text-align: center; }

/* Floating blobs */
.blob {
  position: absolute; border-radius: 50%;
  filter: blur(80px); opacity: 0.35;
  pointer-events: none; z-index: 1;
}
.blob-1 { width: 460px; height: 460px; background: var(--blue); top: 5%; left: 3%; animation: blob1 22s ease-in-out infinite; }
.blob-2 { width: 380px; height: 380px; background: var(--red); bottom: 8%; right: 6%; animation: blob2 26s ease-in-out infinite; }
.blob-3 { width: 320px; height: 320px; background: var(--yellow); top: 35%; right: 22%; animation: blob3 24s ease-in-out infinite; }
.blob-4 { width: 280px; height: 280px; background: var(--green); bottom: 15%; left: 25%; animation: blob4 20s ease-in-out infinite; }

@keyframes blob1 {
  0%, 100% { transform: translate(0,0) scale(1); }
  33% { transform: translate(90px, 60px) scale(1.15); }
  66% { transform: translate(30px, 120px) scale(0.9); }
}
@keyframes blob2 {
  0%, 100% { transform: translate(0,0) scale(1); }
  50% { transform: translate(-100px, -70px) scale(1.2); }
}
@keyframes blob3 {
  0%, 100% { transform: translate(0,0) scale(1); }
  50% { transform: translate(60px, -90px) scale(0.85); }
}
@keyframes blob4 {
  0%, 100% { transform: translate(0,0) scale(1); }
  50% { transform: translate(-80px, 50px) scale(1.1); }
}

.hero-eyebrow {
  display: inline-flex; align-items: center; gap: 10px;
  padding: 8px 18px;
  border: 1px solid var(--border-hi);
  border-radius: 999px;
  font-size: 0.8rem; font-weight: 500;
  color: var(--muted);
  margin-bottom: 28px;
  opacity: 0; transform: translateY(20px);
  animation: fadeUp 0.8s var(--spring) 0.8s forwards;
  backdrop-filter: blur(10px);
  background: rgba(255,255,255,0.03);
}
.hero-eyebrow .dot {
  width: 8px; height: 8px;
  background: var(--green);
  border-radius: 50%;
  box-shadow: 0 0 12px var(--green);
  animation: pulseDot 2s ease-in-out infinite;
}
@keyframes pulseDot {
  0%, 100% { transform: scale(1); opacity: 1; }
  50% { transform: scale(1.4); opacity: 0.6; }
}

.hero-title {
  font-size: clamp(2.8rem, 8vw, 6.5rem);
  font-weight: 800;
  line-height: 0.98;
  letter-spacing: -0.05em;
  margin-bottom: 24px;
}
.hero-title .word {
  display: inline-block; overflow: hidden; vertical-align: bottom;
  padding: 0 4px;
}
.hero-title .word > span {
  display: inline-block;
  transform: translateY(110%) rotate(8deg);
  animation: wordUp 1s var(--spring) forwards;
}
.hero-title .word:nth-child(1) > span { animation-delay: 1s; }
.hero-title .word:nth-child(2) > span { animation-delay: 1.15s; }
.hero-title .word:nth-child(3) > span { animation-delay: 1.3s; }
.hero-title .word:nth-child(4) > span { animation-delay: 1.45s; }

@keyframes wordUp {
  to { transform: translateY(0) rotate(0); }
}
@keyframes fadeUp {
  to { opacity: 1; transform: translateY(0); }
}

.gradient-text {
  background: linear-gradient(90deg, var(--blue), var(--red), var(--yellow), var(--green), var(--blue));
  background-size: 300% 100%;
  -webkit-background-clip: text;
  background-clip: text;
  -webkit-text-fill-color: transparent;
  animation: gradientShift 6s linear infinite;
}
@keyframes gradientShift {
  to { background-position: 300% 0; }
}

.hero-sub {
  font-size: clamp(1rem, 2vw, 1.2rem);
  color: var(--muted);
  max-width: 560px;
  margin: 0 auto 40px;
  opacity: 0; transform: translateY(20px);
  animation: fadeUp 0.8s var(--spring) 1.6s forwards;
}
.rotator {
  display: inline-block;
  color: #fff; font-weight: 600;
  transition: opacity 0.25s ease, transform 0.25s ease;
  min-width: 90px;
}

/* Google-style search bar */
.hero-search {
  display: flex; align-items: center; gap: 16px;
  max-width: 720px; margin: 0 auto 28px;
  padding: 20px 28px;
  background: rgba(255,255,255,0.04);
  border: 1px solid var(--border-hi);
  border-radius: 999px;
  backdrop-filter: blur(20px);
  transition: all 0.4s var(--smooth);
  opacity: 0; transform: translateY(20px);
  animation: fadeUp 0.8s var(--spring) 1.75s forwards;
}
.hero-search:hover {
  border-color: rgba(255,255,255,0.3);
  background: rgba(255,255,255,0.06);
  box-shadow: 0 20px 60px rgba(0,0,0,0.5);
}
.hero-search:focus-within {
  border-color: rgba(66,133,244,0.6);
  background: rgba(255,255,255,0.06);
  box-shadow: 0 0 0 4px rgba(66,133,244,0.15), 0 24px 64px rgba(66,133,244,0.2);
  transform: scale(1.02);
}
.hero-search > i {
  font-size: 1.1rem;
  color: var(--muted);
  transition: color 0.3s;
}
.hero-search:focus-within > i { color: var(--blue); }
.hero-search input {
  flex: 1; min-width: 0;
  background: transparent; border: none; outline: none;
  color: #fff;
  font-family: 'Roboto', sans-serif;
  font-size: 1.05rem;
  padding: 4px 0;
}
.hero-search input::placeholder { color: var(--dim); }
.hero-search-actions {
  display: flex; gap: 4px;
}
.hero-search-actions button {
  width: 38px; height: 38px;
  border-radius: 50%;
  display: grid; place-items: center;
  color: var(--muted);
  transition: all 0.25s var(--spring);
}
.hero-search-actions button:hover {
  color: #fff;
  background: rgba(255,255,255,0.08);
  transform: scale(1.1);
}

.hero-tags {
  display: flex; gap: 10px; flex-wrap: wrap;
  justify-content: center;
  opacity: 0;
  animation: fadeUp 0.8s var(--spring) 1.9s forwards;
}
.hero-tag {
  padding: 8px 18px;
  border: 1px solid var(--border);
  border-radius: 999px;
  font-size: 0.82rem;
  color: var(--muted);
  background: rgba(255,255,255,0.02);
  transition: all 0.25s var(--spring);
  cursor: pointer;
}
.hero-tag:hover {
  color: #fff;
  border-color: var(--blue);
  background: rgba(66,133,244,0.1);
  transform: translateY(-3px);
}

/* Scroll indicator */
.scroll-indicator {
  position: absolute;
  bottom: 32px; left: 50%;
  transform: translateX(-50%);
  z-index: 3;
  display: flex; flex-direction: column; align-items: center; gap: 8px;
  color: var(--muted);
  font-size: 0.7rem;
  letter-spacing: 0.2em;
  text-transform: uppercase;
  opacity: 0;
  animation: fadeUp 0.8s var(--spring) 2.2s forwards;
}
.scroll-indicator .mouse {
  width: 24px; height: 40px;
  border: 1.5px solid var(--muted);
  border-radius: 12px;
  position: relative;
}
.scroll-indicator .mouse::after {
  content: '';
  position: absolute; top: 8px; left: 50%;
  width: 3px; height: 8px;
  background: #fff;
  border-radius: 2px;
  transform: translateX(-50%);
  animation: scrollWheel 1.8s ease-in-out infinite;
}
@keyframes scrollWheel {
  0% { top: 8px; opacity: 1; }
  100% { top: 22px; opacity: 0; }
}

/* ============================================================
   MARQUEE
   ============================================================ */
.marquee {
  border-top: 1px solid var(--border);
  border-bottom: 1px solid var(--border);
  background: var(--surface);
  overflow: hidden;
  padding: 18px 0;
  display: flex;
}
.marquee-track {
  display: flex; gap: 56px;
  width: max-content;
  animation: marqueeScroll 30s linear infinite;
  flex-shrink: 0;
}
.marquee:hover .marquee-track { animation-play-state: paused; }
.marquee-track span {
  font-family: 'Poppins', sans-serif;
  font-size: 0.95rem;
  font-weight: 500;
  color: var(--muted);
  white-space: nowrap;
  display: flex; align-items: center; gap: 12px;
  transition: color 0.3s;
}
.marquee-track span:hover { color: #fff; }
.marquee-track span i {
  font-size: 0.7rem;
}
.marquee-track span:nth-child(4n+1) i { color: var(--blue); }
.marquee-track span:nth-child(4n+2) i { color: var(--red); }
.marquee-track span:nth-child(4n+3) i { color: var(--yellow); }
.marquee-track span:nth-child(4n+4) i { color: var(--green); }

@keyframes marqueeScroll {
  0% { transform: translateX(0); }
  100% { transform: translateX(-50%); }
}

/* ============================================================
   SECTIONS (base)
   ============================================================ */
.section {
  padding: 110px 0;
  position: relative;
}
.section-header {
  display: flex; align-items: flex-end; justify-content: space-between;
  gap: 24px; margin-bottom: 56px; flex-wrap: wrap;
}
.section-header h2 {
  font-size: clamp(2rem, 4.5vw, 3.4rem);
  font-weight: 800;
  line-height: 1.05;
  letter-spacing: -0.04em;
}
.section-header h2 .accent-line {
  display: block;
  height: 4px; width: 0;
  background: linear-gradient(90deg, var(--blue), var(--red), var(--yellow), var(--green));
  border-radius: 2px;
  margin-top: 16px;
  transition: width 1.2s var(--spring);
}
.section-header.active h2 .accent-line { width: 100px; }
.section-header p {
  color: var(--muted);
  max-width: 400px;
  font-size: 1rem;
}
.view-all {
  display: inline-flex; align-items: center; gap: 8px;
  font-size: 0.9rem; font-weight: 500;
  color: var(--muted);
  padding: 10px 20px;
  border: 1px solid var(--border);
  border-radius: 999px;
  transition: all 0.3s var(--spring);
  white-space: nowrap;
}
.view-all:hover {
  color: #fff;
  border-color: var(--blue);
  background: rgba(66,133,244,0.08);
  gap: 14px;
}

/* Reveal animations */
.reveal {
  opacity: 0;
  transform: translateY(50px);
  transition: opacity 0.9s var(--smooth), transform 0.9s var(--spring);
}
.reveal.active { opacity: 1; transform: translateY(0); }

.reveal-scale {
  opacity: 0;
  transform: scale(0.85);
  transition: opacity 0.8s var(--smooth), transform 0.8s var(--spring);
}
.reveal-scale.active { opacity: 1; transform: scale(1); }

/* ============================================================
   STATS
   ============================================================ */
.stats {
  padding: 80px 0;
  border-bottom: 1px solid var(--border);
}
.stats-grid {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 32px;
}
.stat-item {
  text-align: center;
  padding: 32px 20px;
  border-right: 1px solid var(--border);
}
.stat-item:last-child { border-right: none; }
.stat-num {
  font-family: 'Poppins', sans-serif;
  font-size: clamp(2.5rem, 5vw, 3.8rem);
  font-weight: 800;
  line-height: 1;
  letter-spacing: -0.03em;
  margin-bottom: 8px;
  background: linear-gradient(135deg, #fff, #a0a0a0);
  -webkit-background-clip: text;
  background-clip: text;
  -webkit-text-fill-color: transparent;
}
.stat-label {
  font-size: 0.85rem;
  color: var(--muted);
  text-transform: uppercase;
  letter-spacing: 0.15em;
  font-weight: 500;
}
.stat-item:nth-child(1) .stat-num { background: linear-gradient(135deg, var(--blue), #fff); -webkit-background-clip: text; background-clip: text; -webkit-text-fill-color: transparent; }
.stat-item:nth-child(2) .stat-num { background: linear-gradient(135deg, var(--red), #fff); -webkit-background-clip: text; background-clip: text; -webkit-text-fill-color: transparent; }
.stat-item:nth-child(3) .stat-num { background: linear-gradient(135deg, var(--yellow), #fff); -webkit-background-clip: text; background-clip: text; -webkit-text-fill-color: transparent; }
.stat-item:nth-child(4) .stat-num { background: linear-gradient(135deg, var(--green), #fff); -webkit-background-clip: text; background-clip: text; -webkit-text-fill-color: transparent; }

/* ============================================================
   CATEGORIES
   ============================================================ */
.categories-grid {
  display: grid;
  grid-template-columns: repeat(6, 1fr);
  gap: 16px;
}
.cat-card {
  position: relative;
  overflow: hidden;
  background: var(--card);
  border: 1px solid var(--border);
  border-radius: 24px;
  padding: 32px 16px 26px;
  text-align: center;
  cursor: pointer;
  transition: all 0.4s var(--spring);
}
.cat-card::before {
  content: '';
  position: absolute; inset: 0;
  background: radial-gradient(circle at center, rgba(66,133,244,0.15), transparent 70%);
  opacity: 0;
  transition: opacity 0.4s;
  pointer-events: none;
}
.cat-card:hover {
  transform: translateY(-10px);
  border-color: var(--border-hi);
  box-shadow: 0 30px 60px rgba(0,0,0,0.5);
}
.cat-card:hover::before { opacity: 1; }
.cat-card .icon-wrap {
  width: 64px; height: 64px;
  margin: 0 auto 16px;
  display: grid; place-items: center;
  border-radius: 20px;
  font-size: 1.6rem;
  background: rgba(255,255,255,0.04);
  border: 1px solid var(--border);
  transition: all 0.4s var(--spring);
  position: relative;
}
.cat-card:hover .icon-wrap {
  transform: rotate(-8deg) scale(1.1);
}
.cat-card:nth-child(1) .icon-wrap { color: var(--blue); }
.cat-card:nth-child(2) .icon-wrap { color: var(--red); }
.cat-card:nth-child(3) .icon-wrap { color: var(--yellow); }
.cat-card:nth-child(4) .icon-wrap { color: var(--green); }
.cat-card:nth-child(5) .icon-wrap { color: var(--blue); }
.cat-card:nth-child(6) .icon-wrap { color: var(--red); }

.cat-card:nth-child(1):hover .icon-wrap { background: rgba(66,133,244,0.15); border-color: var(--blue); box-shadow: 0 8px 24px rgba(66,133,244,0.3); }
.cat-card:nth-child(2):hover .icon-wrap { background: rgba(234,67,53,0.15); border-color: var(--red); box-shadow: 0 8px 24px rgba(234,67,53,0.3); }
.cat-card:nth-child(3):hover .icon-wrap { background: rgba(251,188,5,0.15); border-color: var(--yellow); box-shadow: 0 8px 24px rgba(251,188,5,0.3); }
.cat-card:nth-child(4):hover .icon-wrap { background: rgba(52,168,83,0.15); border-color: var(--green); box-shadow: 0 8px 24px rgba(52,168,83,0.3); }
.cat-card:nth-child(5):hover .icon-wrap { background: rgba(66,133,244,0.15); border-color: var(--blue); box-shadow: 0 8px 24px rgba(66,133,244,0.3); }
.cat-card:nth-child(6):hover .icon-wrap { background: rgba(234,67,53,0.15); border-color: var(--red); box-shadow: 0 8px 24px rgba(234,67,53,0.3); }

.cat-card h4 {
  font-size: 0.95rem;
  font-weight: 600;
  margin-bottom: 4px;
}
.cat-card .count {
  font-size: 0.78rem;
  color: var(--muted);
}

/* Ripple */
.ripple {
  position: absolute;
  border-radius: 50%;
  background: rgba(255,255,255,0.4);
  transform: scale(0);
  animation: rippleAnim 0.7s ease-out;
  pointer-events: none;
  z-index: 5;
}
@keyframes rippleAnim {
  to { transform: scale(4); opacity: 0; }
}

/* ============================================================
   PRODUCTS
   ============================================================ */
.products-grid {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 22px;
}
.product-card {
  background: var(--card);
  border: 1px solid var(--border);
  border-radius: 24px;
  overflow: hidden;
  display: flex; flex-direction: column;
  transition: all 0.4s var(--spring);
  position: relative;
}
.product-card:hover {
  transform: translateY(-8px);
  border-color: var(--border-hi);
  box-shadow: 0 30px 60px rgba(0,0,0,0.5);
}
.product-card .img-wrap {
  position: relative;
  aspect-ratio: 1/1;
  overflow: hidden;
  background: #1a1a1a;
  border-bottom: 1px solid var(--border);
}
.product-card .img-wrap img {
  width: 100%; height: 100%;
  object-fit: cover;
  transition: transform 0.7s var(--spring);
}
.product-card:hover .img-wrap img { transform: scale(1.08); }
.product-card .badge {
  position: absolute; top: 14px; left: 14px;
  padding: 5px 12px;
  border-radius: 999px;
  font-size: 0.68rem; font-weight: 700;
  letter-spacing: 0.05em;
  background: var(--blue); color: #fff;
  z-index: 2;
  animation: badgePop 0.5s var(--spring);
}
@keyframes badgePop {
  0% { transform: scale(0); }
  100% { transform: scale(1); }
}
.product-card .badge.sale { background: var(--red); }
.product-card .wish-btn {
  position: absolute; top: 14px; right: 14px;
  width: 36px; height: 36px;
  border-radius: 50%;
  background: rgba(0,0,0,0.55);
  backdrop-filter: blur(8px);
  display: grid; place-items: center;
  color: var(--muted);
  font-size: 0.9rem;
  transition: all 0.3s var(--spring);
  z-index: 2;
}
.product-card .wish-btn:hover {
  color: var(--red);
  background: rgba(234,67,53,0.2);
  transform: scale(1.15);
}
.product-card .wish-btn.active { color: var(--red); }
.product-card .wish-btn.active i { font-weight: 900; animation: heartBeat 0.6s var(--spring); }
@keyframes heartBeat {
  0%, 100% { transform: scale(1); }
  40% { transform: scale(1.4); }
  70% { transform: scale(0.9); }
}

.product-card .body {
  padding: 20px 20px 12px;
  flex: 1; display: flex; flex-direction: column; gap: 6px;
}
.product-card .body .category-tag {
  font-size: 0.72rem;
  color: var(--dim);
  text-transform: uppercase;
  letter-spacing: 0.1em;
  font-weight: 600;
}
.product-card .body h5 {
  font-size: 1.05rem;
  font-weight: 600;
  line-height: 1.3;
  display: -webkit-box;
  -webkit-line-clamp: 2;
  -webkit-box-orient: vertical;
  overflow: hidden;
}
.product-card .body .price-row {
  display: flex; align-items: baseline; gap: 10px;
  margin-top: 4px;
}
.product-card .body .price {
  font-family: 'Poppins', sans-serif;
  font-weight: 700;
  font-size: 1.2rem;
  color: #fff;
}
.product-card .body .old-price {
  font-size: 0.85rem;
  color: var(--dim);
  text-decoration: line-through;
}
.product-card .body .rating {
  display: flex; align-items: center; gap: 4px;
  font-size: 0.8rem;
  color: var(--yellow);
  letter-spacing: 1px;
  margin-top: 4px;
}
.product-card .body .rating span {
  color: var(--muted);
  font-size: 0.78rem;
  margin-left: 4px;
  letter-spacing: 0;
}
.product-card .footer {
  padding: 0 20px 20px;
}
.product-card .footer .add-btn {
  position: relative;
  width: 100%;
  overflow: hidden;
  padding: 12px;
  border-radius: 14px;
  background: rgba(255,255,255,0.06);
  border: 1px solid var(--border);
  color: #fff;
  font-size: 0.88rem;
  font-weight: 600;
  display: flex; align-items: center; justify-content: center; gap: 8px;
  transition: all 0.3s var(--spring);
}
.product-card .footer .add-btn:hover {
  background: var(--blue);
  border-color: var(--blue);
  transform: translateY(-2px);
  box-shadow: 0 12px 28px rgba(66,133,244,0.35);
}
.product-card .footer .add-btn.added {
  background: var(--green);
  border-color: var(--green);
  box-shadow: 0 12px 28px rgba(52,168,83,0.35);
}

/* ============================================================
   FEATURES
   ============================================================ */
.features-grid {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 20px;
}
.feature-card {
  background: var(--card);
  border: 1px solid var(--border);
  border-radius: 24px;
  padding: 36px 28px;
  transition: all 0.4s var(--spring);
  position: relative;
  overflow: hidden;
}
.feature-card::before {
  content: '';
  position: absolute;
  top: -50%; left: -50%;
  width: 200%; height: 200%;
  background: radial-gradient(circle at center, rgba(66,133,244,0.1), transparent 40%);
  opacity: 0;
  transition: opacity 0.4s;
  pointer-events: none;
}
.feature-card:hover {
  transform: translateY(-8px);
  border-color: var(--border-hi);
  box-shadow: 0 24px 48px rgba(0,0,0,0.4);
}
.feature-card:hover::before { opacity: 1; }
.feature-icon {
  width: 64px; height: 64px;
  display: grid; place-items: center;
  border-radius: 18px;
  font-size: 1.7rem;
  margin-bottom: 24px;
  background: rgba(255,255,255,0.05);
  border: 1px solid var(--border);
  transition: all 0.4s var(--spring);
}
.feature-card:hover .feature-icon {
  transform: translateY(-4px) scale(1.08) rotate(-5deg);
}
.feature-card:nth-child(1) .feature-icon { color: var(--blue); }
.feature-card:nth-child(2) .feature-icon { color: var(--red); }
.feature-card:nth-child(3) .feature-icon { color: var(--yellow); }
.feature-card:nth-child(4) .feature-icon { color: var(--green); }
.feature-card h4 {
  font-size: 1.15rem;
  font-weight: 700;
  margin-bottom: 8px;
}
.feature-card p {
  font-size: 0.92rem;
  color: var(--muted);
  line-height: 1.6;
}

/* ============================================================
   TESTIMONIALS
   ============================================================ */
.testimonial-stage {
  position: relative;
  min-height: 260px;
  display: grid;
  place-items: center;
  padding: 20px 0;
}
.testimonial-card {
  position: absolute;
  inset: 0;
  max-width: 780px;
  margin: 0 auto;
  background: var(--card);
  border: 1px solid var(--border);
  border-radius: 28px;
  padding: 44px 48px;
  text-align: center;
  opacity: 0;
  transform: translateY(30px) scale(0.95);
  transition: all 0.7s var(--spring);
  pointer-events: none;
}
.testimonial-card.active {
  opacity: 1;
  transform: translateY(0) scale(1);
  pointer-events: auto;
  position: relative;
}
.testimonial-card .quote-mark {
  font-family: 'Poppins', sans-serif;
  font-size: 4rem;
  line-height: 0.6;
  color: var(--blue);
  margin-bottom: 16px;
  opacity: 0.5;
}
.testimonial-card blockquote {
  font-size: 1.2rem;
  line-height: 1.6;
  color: #fff;
  margin-bottom: 28px;
  font-weight: 400;
}
.testimonial-card .author {
  display: flex; align-items: center; justify-content: center; gap: 14px;
}
.testimonial-card .author .avatar {
  width: 52px; height: 52px;
  border-radius: 50%;
  object-fit: cover;
  border: 2px solid var(--border-hi);
}
.testimonial-card .author .name {
  font-family: 'Poppins', sans-serif;
  font-weight: 600;
  font-size: 0.95rem;
}
.testimonial-card .author .role {
  font-size: 0.8rem;
  color: var(--muted);
}
.testimonial-stars {
  display: flex; justify-content: center; gap: 4px;
  margin-bottom: 20px;
  color: var(--yellow);
  font-size: 1rem;
}
.testimonial-dots {
  display: flex; justify-content: center; gap: 10px;
  margin-top: 40px;
}
.testimonial-dot {
  width: 10px; height: 10px;
  border-radius: 50%;
  background: rgba(255,255,255,0.15);
  transition: all 0.3s var(--spring);
  cursor: pointer;
}
.testimonial-dot.active {
  width: 32px;
  border-radius: 5px;
  background: linear-gradient(90deg, var(--blue), var(--red));
}

/* ============================================================
   NEWSLETTER
   ============================================================ */
.newsletter-wrap {
  position: relative;
  border: 1px solid var(--border-hi);
  border-radius: 32px;
  padding: 64px;
  background: linear-gradient(135deg, #0a0a14, #0d0d18);
  overflow: hidden;
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 48px;
  flex-wrap: wrap;
}
.newsletter-wrap::before {
  content: '';
  position: absolute;
  top: -50%; right: -20%;
  width: 500px; height: 500px;
  background: radial-gradient(circle, rgba(66,133,244,0.2), transparent 70%);
  filter: blur(60px);
  pointer-events: none;
  animation: blob1 15s ease-in-out infinite;
}
.newsletter-wrap::after {
  content: '';
  position: absolute;
  bottom: -50%; left: -10%;
  width: 400px; height: 400px;
  background: radial-gradient(circle, rgba(234,67,53,0.15), transparent 70%);
  filter: blur(60px);
  pointer-events: none;
  animation: blob2 18s ease-in-out infinite;
}
.newsletter-wrap .text {
  position: relative; z-index: 1;
  flex: 1; min-width: 280px;
}
.newsletter-wrap .text h3 {
  font-size: clamp(1.8rem, 3.5vw, 2.6rem);
  font-weight: 800;
  margin-bottom: 12px;
  letter-spacing: -0.03em;
}
.newsletter-wrap .text p {
  color: var(--muted);
  font-size: 1rem;
}
.newsletter-wrap form {
  position: relative; z-index: 1;
  display: flex; gap: 12px;
  flex: 1; min-width: 280px;
  max-width: 480px;
  flex-wrap: wrap;
}
.newsletter-wrap form input {
  flex: 1; min-width: 200px;
  padding: 16px 24px;
  background: rgba(255,255,255,0.05);
  border: 1px solid var(--border-hi);
  border-radius: 999px;
  color: #fff;
  font-size: 0.95rem;
  outline: none;
  transition: all 0.35s var(--smooth);
}
.newsletter-wrap form input:focus {
  border-color: var(--blue);
  background: rgba(255,255,255,0.08);
  box-shadow: 0 0 0 4px rgba(66,133,244,0.15);
}
.newsletter-wrap form input::placeholder { color: var(--dim); }
#newsletterMsg {
  width: 100%;
  font-size: 0.85rem;
  margin-top: 8px;
  display: none;
}

/* ============================================================
   FOOTER
   ============================================================ */
footer {
  padding: 80px 0 32px;
  border-top: 1px solid var(--border);
}
.footer-grid {
  display: grid;
  grid-template-columns: 2fr 1fr 1fr 1fr;
  gap: 48px;
  margin-bottom: 56px;
}
.footer-brand .brand {
  font-size: 1.5rem;
  margin-bottom: 16px;
  display: inline-flex;
}
.footer-brand p {
  color: var(--muted);
  font-size: 0.92rem;
  max-width: 320px;
  line-height: 1.7;
  margin-bottom: 24px;
}
.socials { display: flex; gap: 10px; }
.socials a {
  width: 42px; height: 42px;
  border-radius: 12px;
  background: var(--card);
  border: 1px solid var(--border);
  display: grid; place-items: center;
  color: var(--muted);
  font-size: 1rem;
  transition: all 0.3s var(--spring);
}
.socials a:hover {
  transform: translateY(-4px);
  border-color: var(--blue);
  color: var(--blue);
  background: rgba(66,133,244,0.08);
}
.socials a:nth-child(2):hover { border-color: var(--red); color: var(--red); background: rgba(234,67,53,0.08); }
.socials a:nth-child(3):hover { border-color: var(--yellow); color: var(--yellow); background: rgba(251,188,5,0.08); }
.socials a:nth-child(4):hover { border-color: var(--green); color: var(--green); background: rgba(52,168,83,0.08); }

.footer-col h5 {
  font-size: 0.85rem;
  font-weight: 600;
  color: #fff;
  margin-bottom: 20px;
  text-transform: uppercase;
  letter-spacing: 0.1em;
}
.footer-col ul { list-style: none; display: flex; flex-direction: column; gap: 12px; }
.footer-col ul li a {
  color: var(--muted);
  font-size: 0.92rem;
  transition: color 0.25s;
  display: inline-block;
}
.footer-col ul li a:hover { color: #fff; }

.footer-bottom {
  padding-top: 32px;
  border-top: 1px solid var(--border);
  display: flex;
  align-items: center;
  justify-content: space-between;
  color: var(--dim);
  font-size: 0.82rem;
  flex-wrap: wrap;
  gap: 12px;
}

/* ============================================================
   BACK TO TOP
   ============================================================ */
.back-to-top {
  position: fixed;
  bottom: 32px; right: 32px;
  width: 54px; height: 54px;
  border-radius: 50%;
  background: var(--blue);
  color: #fff;
  font-size: 1.1rem;
  display: grid; place-items: center;
  box-shadow: 0 12px 28px rgba(66,133,244,0.4);
  opacity: 0; visibility: hidden;
  transform: translateY(20px) scale(0.5);
  transition: all 0.4s var(--spring);
  z-index: 500;
}
.back-to-top.show {
  opacity: 1; visibility: visible;
  transform: translateY(0) scale(1);
}
.back-to-top:hover {
  transform: translateY(-4px) scale(1.1);
  box-shadow: 0 18px 36px rgba(66,133,244,0.5);
}

/* ============================================================
   SKELETON LOADER (products)
   ============================================================ */
.skeleton {
  background: linear-gradient(90deg, #1a1a1a 0%, #252525 50%, #1a1a1a 100%);
  background-size: 200% 100%;
  animation: shimmer 1.4s infinite;
  border-radius: 24px;
  aspect-ratio: 0.7;
}
@keyframes shimmer {
  0% { background-position: 200% 0; }
  100% { background-position: -200% 0; }
}

/* ============================================================
   RESPONSIVE
   ============================================================ */
@media (max-width: 1200px) {
  .products-grid { grid-template-columns: repeat(3, 1fr); }
  .categories-grid { grid-template-columns: repeat(3, 1fr); }
  .features-grid { grid-template-columns: repeat(2, 1fr); }
  .stats-grid { grid-template-columns: repeat(2, 1fr); gap: 16px; }
  .stat-item:nth-child(2) { border-right: none; }
  .footer-grid { grid-template-columns: 1.6fr 1fr 1fr; gap: 36px; }
}
@media (max-width: 992px) {
  .newsletter-wrap { padding: 48px 32px; }
  .testimonial-card { padding: 36px 28px; }
}
@media (max-width: 768px) {
  nav.main-nav { display: none; }
  .mobile-toggle { display: grid; }
  .products-grid { grid-template-columns: repeat(2, 1fr); gap: 14px; }
  .categories-grid { grid-template-columns: repeat(2, 1fr); gap: 12px; }
  .features-grid { grid-template-columns: repeat(2, 1fr); gap: 14px; }
  .stats-grid { grid-template-columns: repeat(2, 1fr); }
  .stat-item { border-right: none; padding: 24px 8px; }
  .footer-grid { grid-template-columns: 1fr 1fr; gap: 32px; }
  .section { padding: 72px 0; }
  .hero { min-height: 80vh; padding: 60px 0 100px; }
  .hero-search { padding: 16px 22px; }
  .hero-search input { font-size: 0.95rem; }
  .hero-search-actions button { width: 32px; height: 32px; font-size: 0.85rem; }
  .scroll-indicator { display: none; }
  .newsletter-wrap { padding: 36px 24px; border-radius: 24px; }
  .container { padding: 0 20px; }
  .testimonial-card { padding: 28px 22px; border-radius: 20px; }
  .testimonial-card blockquote { font-size: 1rem; }
  .back-to-top { bottom: 20px; right: 20px; width: 46px; height: 46px; font-size: 0.95rem; }
}
@media (max-width: 500px) {
  .products-grid { grid-template-columns: 1fr 1fr; gap: 10px; }
  .product-card .body { padding: 14px 12px 8px; }
  .product-card .body h5 { font-size: 0.88rem; }
  .product-card .body .price { font-size: 1rem; }
  .product-card .body .old-price { font-size: 0.72rem; }
  .product-card .footer { padding: 0 12px 14px; }
  .product-card .footer .add-btn { font-size: 0.78rem; padding: 10px; }
  .features-grid { grid-template-columns: 1fr; }
  .stat-item { padding: 20px 8px; }
  .newsletter-wrap { padding: 28px 18px; }
  .newsletter-wrap form { flex-direction: column; }
  .newsletter-wrap form input, .newsletter-wrap form .btn { width: 100%; }
  .hero-title { font-size: clamp(2.2rem, 11vw, 3rem); }
  .hero-sub { font-size: 0.95rem; }
  .hero-search { padding: 12px 18px; }
  .hero-search-actions button:nth-child(2) { display: none; }
  .footer-grid { grid-template-columns: 1fr; }
  .testimonial-card { padding: 24px 18px; }
  .testimonial-card blockquote { font-size: 0.92rem; }
  .section-header h2 { font-size: clamp(1.6rem, 7vw, 2.2rem); }
  .view-all { font-size: 0.8rem; padding: 8px 16px; }
}
</style>
</head>
<body class="loading">

<!-- ===================== PRELOADER ===================== -->
<div class="preloader" id="preloader">
  <div class="preloader-logo">
    <span>N</span><span>E</span><span>X</span><span>U</span><span>S</span>
  </div>
  <div class="preloader-dots">
    <span></span><span></span><span></span><span></span>
  </div>
</div>

<!-- ===================== CUSTOM CURSOR ===================== -->
<div class="cursor-dot" id="cursorDot"></div>
<div class="cursor-ring" id="cursorRing"></div>

<!-- ===================== PROGRESS BAR ===================== -->
<div class="progress-bar" id="progressBar"></div>

<!-- ===================== HEADER ===================== -->
<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:8px;">
      <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu">
        <i class="fas fa-bars"></i>
      </button>
      <a class="brand" href="#" aria-label="NEXUS home">
        <span>N</span><span>E</span><span>X</span><span>U</span><span>S</span>
      </a>
    </div>

    <nav class="main-nav" id="mainNav" aria-label="Main navigation">
      <ul>
        <li><a href="#" class="active"><i class="fas fa-house"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        <li><a href="#reviews"><i class="fas fa-star"></i> Reviews</a></li>
      </ul>
    </nav>

    <div class="header-actions">
      <button class="icon-btn" title="Search" aria-label="Search"><i class="fas fa-search"></i></button>
      <button class="icon-btn" title="Account" aria-label="Account"><i class="far fa-user"></i></button>
      <div class="cart-wrap">
        <button class="icon-btn" id="cartBtn" title="Cart" aria-label="Cart">
          <i class="fas fa-bag-shopping"></i>
        </button>
        <span class="cart-count" id="cartCount">0</span>
      </div>
    </div>
  </div>

  <div id="mobileMenu">
    <div class="container">
      <ul>
        <li><a href="#"><i class="fas fa-house"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        <li><a href="#reviews"><i class="fas fa-star"></i> Reviews</a></li>
        <li><a href="#"><i class="far fa-user"></i> Account</a></li>
      </ul>
    </div>
  </div>
</header>

<!-- ===================== MAIN ===================== -->
<main>

  <!-- ===== HERO ===== -->
  <section class="hero" aria-label="Hero">
    <div class="blob blob-1"></div>
    <div class="blob blob-2"></div>
    <div class="blob blob-3"></div>
    <div class="blob blob-4"></div>

    <div class="container">
      <div class="hero-eyebrow">
        <span class="dot"></span>
        New collection · Spring 2026
      </div>

      <h1 class="hero-title">
        <span class="word"><span>Shop</span></span>
        <span class="word"><span>the</span></span>
        <span class="word"><span class="gradient-text">Future.</span></span>
      </h1>

      <p class="hero-sub">
        Discover <span class="rotator" id="rotator">tech</span> designed for tomorrow.
      </p>

      <div class="hero-search" id="heroSearch">
        <i class="fas fa-search"></i>
        <input type="text" id="heroSearchInput" placeholder="Search products, brands, categories…" aria-label="Search">
        <div class="hero-search-actions">
          <button aria-label="Voice search"><i class="fas fa-microphone"></i></button>
          <button aria-label="Image search"><i class="fas fa-camera"></i></button>
        </div>
      </div>

      <div class="hero-tags">
        <button class="hero-tag" data-tag="Smartphones">Smartphones</button>
        <button class="hero-tag" data-tag="Laptops">Laptops</button>
        <button class="hero-tag" data-tag="Audio">Audio</button>
        <button class="hero-tag" data-tag="Wearables">Wearables</button>
        <button class="hero-tag" data-tag="Accessories">Accessories</button>
      </div>
    </div>

    <div class="scroll-indicator">
      <div class="mouse"></div>
      <span>Scroll</span>
    </div>
  </section>

  <!-- ===== MARQUEE ===== -->
  <div class="marquee" aria-hidden="true">
    <div class="marquee-track" id="marqueeTrack">
      <span><i class="fas fa-circle"></i> Free shipping over $150</span>
      <span><i class="fas fa-circle"></i> New drops every Friday</span>
      <span><i class="fas fa-circle"></i> Members get early access</span>
      <span><i class="fas fa-circle"></i> Carbon-neutral delivery</span>
      <span><i class="fas fa-circle"></i> 30-day returns</span>
      <span><i class="fas fa-circle"></i> 24/7 support</span>
      <span><i class="fas fa-circle"></i> Free shipping over $150</span>
      <span><i class="fas fa-circle"></i> New drops every Friday</span>
      <span><i class="fas fa-circle"></i> Members get early access</span>
      <span><i class="fas fa-circle"></i> Carbon-neutral delivery</span>
      <span><i class="fas fa-circle"></i> 30-day returns</span>
      <span><i class="fas fa-circle"></i> 24/7 support</span>
    </div>
  </div>

  <!-- ===== STATS ===== -->
  <section class="stats" aria-label="Statistics">
    <div class="container">
      <div class="stats-grid">
        <div class="stat-item reveal">
          <div class="stat-num" data-count="12000" data-suffix="+">0</div>
          <div class="stat-label">Products</div>
        </div>
        <div class="stat-item reveal">
          <div class="stat-num" data-count="98" data-suffix="%">0</div>
          <div class="stat-label">Satisfaction</div>
        </div>
        <div class="stat-item reveal">
          <div class="stat-num" data-count="240" data-suffix="+">0</div>
          <div class="stat-label">Brands</div>
        </div>
        <div class="stat-item reveal">
          <div class="stat-num" data-count="52" data-suffix="k">0</div>
          <div class="stat-label">Happy customers</div>
        </div>
      </div>
    </div>
  </section>

  <!-- ===== CATEGORIES ===== -->
  <section class="section" id="categories" aria-labelledby="cat-title">
    <div class="container">
      <div class="section-header reveal">
        <div>
          <h2 id="cat-title">Browse by category<span class="accent-line"></span></h2>
          <p>Find exactly what you're looking for.</p>
        </div>
        <a href="#" class="view-all">All categories <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="categories-grid" id="categoriesGrid"></div>
    </div>
  </section>

  <!-- ===== PRODUCTS ===== -->
  <section class="section" id="products" aria-labelledby="prod-title" style="padding-top:0;">
    <div class="container">
      <div class="section-header reveal">
        <div>
          <h2 id="prod-title">Trending now<span class="accent-line"></span></h2>
          <p>Popular picks, hand-selected for you.</p>
        </div>
        <a href="#" class="view-all">View all <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="products-grid" id="productsGrid"></div>
    </div>
  </section>

  <!-- ===== FEATURES ===== -->
  <section class="section" aria-label="Features" style="padding-top:0;">
    <div class="container">
      <div class="features-grid">
        <div class="feature-card reveal">
          <div class="feature-icon"><i class="fas fa-truck-fast"></i></div>
          <h4>Fast delivery</h4>
          <p>Free 2-day shipping on orders over $150, delivered to your door.</p>
        </div>
        <div class="feature-card reveal">
          <div class="feature-icon"><i class="fas fa-shield-halved"></i></div>
          <h4>Secure checkout</h4>
          <p>256-bit encryption and full purchase protection on every order.</p>
        </div>
        <div class="feature-card reveal">
          <div class="feature-icon"><i class="fas fa-rotate-left"></i></div>
          <h4>Easy returns</h4>
          <p>Not happy? Return within 30 days for a full refund. No questions.</p>
        </div>
        <div class="feature-card reveal">
          <div class="feature-icon"><i class="fas fa-headset"></i></div>
          <h4>24/7 support</h4>
          <p>Real humans, real answers. Chat with us any time of day.</p>
        </div>
      </div>
    </div>
  </section>

  <!-- ===== TESTIMONIALS ===== -->
  <section class="section" id="reviews" aria-labelledby="rev-title" style="padding-top:0;">
    <div class="container">
      <div class="section-header reveal" style="justify-content:center;text-align:center;flex-direction:column;align-items:center;">
        <div>
          <h2 id="rev-title">What customers say<span class="accent-line" style="margin-left:auto;margin-right:auto;"></span></h2>
        </div>
      </div>
      <div class="testimonial-stage" id="testimonialStage"></div>
      <div class="testimonial-dots" id="testimonialDots"></div>
    </div>
  </section>

  <!-- ===== NEWSLETTER ===== -->
  <section class="section" aria-labelledby="news-title">
    <div class="container">
      <div class="newsletter-wrap reveal">
        <div class="text">
          <h3 id="news-title">Stay in the loop.</h3>
          <p>Early drops, exclusive offers, and zero spam. Unsubscribe anytime.</p>
        </div>
        <form id="newsletterForm" onsubmit="return false;">
          <input type="email" id="newsletterEmail" placeholder="Enter your email…" aria-label="Email" required>
          <button class="btn" style="background:var(--blue);color:#fff;border-radius:999px;padding:16px 28px;font-weight:600;font-size:0.95rem;transition:all 0.3s var(--spring);" id="subscribeBtn">
            Subscribe
          </button>
          <div id="newsletterMsg"></div>
        </form>
      </div>
    </div>
  </section>

</main>

<!-- ===================== FOOTER ===================== -->
<footer>
  <div class="container">
    <div class="footer-grid">
      <div class="footer-brand">
        <a class="brand" href="#">
          <span>N</span><span>E</span><span>X</span><span>U</span><span>S</span>
        </a>
        <p>Shop the future. A demo storefront for the next generation of commerce.</p>
        <div class="socials">
          <a href="#" aria-label="Twitter"><i class="fab fa-x-twitter"></i></a>
          <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
          <a href="#" aria-label="TikTok"><i class="fab fa-tiktok"></i></a>
          <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
        </div>
      </div>
      <div class="footer-col">
        <h5>Shop</h5>
        <ul>
          <li><a href="#">New arrivals</a></li>
          <li><a href="#">Best sellers</a></li>
          <li><a href="#">Deals</a></li>
          <li><a href="#">Gift cards</a></li>
        </ul>
      </div>
      <div class="footer-col">
        <h5>Support</h5>
        <ul>
          <li><a href="#">Help center</a></li>
          <li><a href="#">Shipping</a></li>
          <li><a href="#">Returns</a></li>
          <li><a href="#">Contact</a></li>
        </ul>
      </div>
      <div class="footer-col">
        <h5>Legal</h5>
        <ul>
          <li><a href="#">Privacy</a></li>
          <li><a href="#">Terms</a></li>
          <li><a href="#">Cookies</a></li>
        </ul>
      </div>
    </div>
    <div class="footer-bottom">
      <span>&copy; <span id="year"></span> NEXUS. All rights reserved.</span>
      <span>Built with motion in mind.</span>
    </div>
  </div>
</footer>

<!-- ===================== BACK TO TOP ===================== -->
<button class="back-to-top" id="backToTop" aria-label="Back to top">
  <i class="fas fa-arrow-up"></i>
</button>

<!-- ===================== SCRIPT ===================== -->
<script>
/* ============================================================
   DATA
   ============================================================ */
const CATEGORIES = [
  { name: 'Smartphones', icon: 'fa-mobile-screen', count: 24 },
  { name: 'Laptops', icon: 'fa-laptop', count: 18 },
  { name: 'Audio', icon: 'fa-headphones', count: 42 },
  { name: 'Wearables', icon: 'fa-watch', count: 31 },
  { name: 'Footwear', icon: 'fa-shoe-prints', count: 27 },
  { name: 'Accessories', icon: 'fa-bag-shopping', count: 39 }
];

const PRODUCTS = [
  { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'NEW',
    img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',
    category: 'Smartphones' },
  { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, badge: '',
    img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',
    category: 'Laptops' },
  { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: 'SALE',
    img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',
    category: 'Wearables' },
  { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, badge: '',
    img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',
    category: 'Footwear' },
  { id: 5, title: 'Sony A7 IV Camera', price: 2499, rating: 5, reviews: 42, badge: 'NEW',
    img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',
    category: 'Accessories' },
  { id: 6, title: 'Chanel No. 5', price: 120, rating: 5, reviews: 189, badge: '',
    img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',
    category: 'Accessories' },
  { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, badge: 'SALE',
    img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',
    category: 'Accessories' },
  { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, badge: '',
    img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',
    category: 'Audio' }
];

const TESTIMONIALS = [
  { name: 'Ava Martin', role: 'Verified buyer', stars: 5,
    avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80',
    text: 'Fast shipping and excellent support. The product exceeded every expectation I had.' },
  { name: 'Michael Lee', role: 'Frequent shopper', stars: 4,
    avatar: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80',
    text: 'Great selection and smooth checkout. Will definitely be back for more.' },
  { name: 'Sophia Chen', role: 'Designer', stars: 5,
    avatar: 'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80',
    text: 'Love the quality and the packaging. Everything arrived in perfect condition.' },
  { name: 'James Wilson', role: 'Tech enthusiast', stars: 5,
    avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80',
    text: 'Amazing prices on electronics. The M2 MacBook deal was absolutely unbeatable.' }
];

/* ============================================================
   STATE
   ============================================================ */
let cartCount = 0;
let activeTestimonial = 0;
let testimonialTimer;

/* ============================================================
   DOM REFS
   ============================================================ */
const preloader = document.getElementById('preloader');
const cursorDot = document.getElementById('cursorDot');
const cursorRing = document.getElementById('cursorRing');
const progressBar = document.getElementById('progressBar');
const categoriesGrid = document.getElementById('categoriesGrid');
const productsGrid = document.getElementById('productsGrid');
const cartCountEl = document.getElementById('cartCount');
const mobileToggle = document.getElementById('mobileToggle');
const mobileMenu = document.getElementById('mobileMenu');
const newsletterForm = document.getElementById('newsletterForm');
const newsletterEmail = document.getElementById('newsletterEmail');
const newsletterMsg = document.getElementById('newsletterMsg');
const testimonialStage = document.getElementById('testimonialStage');
const testimonialDots = document.getElementById('testimonialDots');
const backToTop = document.getElementById('backToTop');
const rotator = document.getElementById('rotator');

/* ============================================================
   UTIL
   ============================================================ */
function escapeHtml(str) {
  return String(str).replace(/[&<>"']/g, s => ({
    '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;'
  }[s]));
}

/* ============================================================
   PRELOADER
   ============================================================ */
window.addEventListener('load', () => {
  setTimeout(() => {
    preloader.classList.add('done');
    document.body.classList.remove('loading');
  }, 2200);
});

/* ============================================================
   CUSTOM CURSOR
   ============================================================ */
if (!matchMedia('(pointer: coarse)').matches) {
  let mouseX = window.innerWidth / 2, mouseY = window.innerHeight / 2;
  let ringX = mouseX, ringY = mouseY;

  document.addEventListener('mousemove', e => {
    mouseX = e.clientX;
    mouseY = e.clientY;
    cursorDot.style.left = mouseX + 'px';
    cursorDot.style.top = mouseY + 'px';
  });

  function animateRing() {
    ringX += (mouseX - ringX) * 0.18;
    ringY += (mouseY - ringY) * 0.18;
    cursorRing.style.left = ringX + 'px';
    cursorRing.style.top = ringY + 'px';
    requestAnimationFrame(animateRing);
  }
  animateRing();

  // Hover state
  const hoverTargets = 'a, button, .cat-card, .product-card, .hero-tag, .wish-btn, .testimonial-dot';
  document.addEventListener('mouseover', e => {
    if (e.target.closest(hoverTargets)) {
      cursorRing.classList.add('hover');
      cursorDot.classList.add('hover');
    }
  });
  document.addEventListener('mouseout', e => {
    if (e.target.closest(hoverTargets)) {
      cursorRing.classList.remove('hover');
      cursorDot.classList.remove('hover');
    }
  });
} else {
  cursorDot.style.display = 'none';
  cursorRing.style.display = 'none';
}

/* ============================================================
   SCROLL PROGRESS + BACK TO TOP
   ============================================================ */
window.addEventListener('scroll', () => {
  const scrollTop = window.scrollY;
  const docHeight = document.documentElement.scrollHeight - window.innerHeight;
  const progress = docHeight > 0 ? (scrollTop / docHeight) * 100 : 0;
  progressBar.style.width = progress + '%';

  if (scrollTop > 500) backToTop.classList.add('show');
  else backToTop.classList.remove('show');
});

backToTop.addEventListener('click', () => {
  window.scrollTo({ top: 0, behavior: 'smooth' });
});

/* ============================================================
   RIPPLE EFFECT (all buttons)
   ============================================================ */
function attachRipple(el) {
  el.addEventListener('click', function(e) {
    const rect = this.getBoundingClientRect();
    const size = Math.max(rect.width, rect.height);
    const ripple = document.createElement('span');
    ripple.className = 'ripple';
    ripple.style.width = ripple.style.height = size + 'px';
    ripple.style.left = (e.clientX - rect.left - size / 2) + 'px';
    ripple.style.top = (e.clientY - rect.top - size / 2) + 'px';
    this.style.position = 'relative';
    this.style.overflow = 'hidden';
    this.appendChild(ripple);
    setTimeout(() => ripple.remove(), 700);
  });
}
document.querySelectorAll('.cat-card, .add-btn, .btn, .hero-tag, .view-all, .hero-search-actions button')
  .forEach(attachRipple);

/* ============================================================
   MAGNETIC BUTTONS
   ============================================================ */
document.querySelectorAll('[data-magnetic], .btn-primary-magnet').forEach(el => {
  el.addEventListener('mousemove', e => {
    const rect = el.getBoundingClientRect();
    const x = e.clientX - rect.left - rect.width / 2;
    const y = e.clientY - rect.top - rect.height / 2;
    el.style.transform = `translate(${x * 0.25}px, ${y * 0.25}px)`;
    el.style.transition = 'transform 0.05s linear';
  });
  el.addEventListener('mouseleave', () => {
    el.style.transform = 'translate(0, 0)';
    el.style.transition = 'transform 0.5s cubic-bezier(0.34, 1.56, 0.64, 1)';
  });
});

/* ============================================================
   SCROLL REVEAL
   ============================================================ */
const revealObserver = new IntersectionObserver((entries) => {
  entries.forEach(entry => {
    if (entry.isIntersecting) {
      entry.target.classList.add('active');
      revealObserver.unobserve(entry.target);

      // Animate counters when a stat is revealed
      if (entry.target.classList.contains('stat-item')) {
        const num = entry.target.querySelector('.stat-num');
        if (num) animateCounter(num);
      }
    }
  });
}, { threshold: 0.12, rootMargin: '0px 0px -40px 0px' });

function observeReveals() {
  document.querySelectorAll('.reveal, .reveal-scale, .section-header').forEach(el => {
    if (!el.classList.contains('active')) revealObserver.observe(el);
  });
}

/* ============================================================
   COUNTER ANIMATION
   ============================================================ */
function animateCounter(el) {
  const target = parseInt(el.dataset.count, 10);
  const suffix = el.dataset.suffix || '';
  const duration = 2000;
  const start = performance.now();

  function update(now) {
    const p = Math.min((now - start) / duration, 1);
    const eased = 1 - Math.pow(1 - p, 4); // easeOutQuart
    const val = Math.floor(target * eased);
    el.textContent = val.toLocaleString() + suffix;
    if (p < 1) requestAnimationFrame(update);
    else el.textContent = target.toLocaleString() + suffix;
  }
  requestAnimationFrame(update);
}

/* ============================================================
   RENDER — Categories
   ============================================================ */
function renderCategories() {
  categoriesGrid.innerHTML = '';
  CATEGORIES.forEach((cat, i) => {
    const el = document.createElement('div');
    el.className = 'cat-card reveal';
    el.style.transitionDelay = (i * 0.06) + 's';
    el.innerHTML = `
      <div class="icon-wrap"><i class="fas ${cat.icon}"></i></div>
      <h4>${cat.name}</h4>
      <div class="count">${cat.count} items</div>
    `;
    el.addEventListener('click', () => {
      document.getElementById('heroSearchInput').value = cat.name;
      filterProducts(cat.name);
      document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
    });
    attachRipple(el);
    categoriesGrid.appendChild(el);
  });
}

/* ============================================================
   RENDER — Products
   ============================================================ */
function renderProducts(list) {
  productsGrid.innerHTML = '';
  if (!list.length) {
    productsGrid.innerHTML =
      `<p style="grid-column:1/-1;text-align:center;padding:56px;color:var(--muted);font-size:1rem;">No products found. Try a different search.</p>`;
    return;
  }
  list.forEach((p, i) => {
    const el = document.createElement('article');
    el.className = 'product-card reveal';
    el.style.transitionDelay = (i * 0.05) + 's';
    const badgeClass = p.badge === 'SALE' ? 'sale' : '';
    const badgeHtml = p.badge ? `<span class="badge ${badgeClass}">${p.badge}</span>` : '';
    const oldPriceHtml = p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : '';
    const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
    el.innerHTML = `
      <div class="img-wrap">
        <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
        ${badgeHtml}
        <button class="wish-btn" aria-label="Add to wishlist"><i class="far fa-heart"></i></button>
      </div>
      <div class="body">
        <div class="category-tag">${p.category}</div>
        <h5>${escapeHtml(p.title)}</h5>
        <div class="price-row">
          <span class="price">$${p.price.toLocaleString()}</span>
          ${oldPriceHtml}
        </div>
        <div class="rating">${stars} <span>(${p.reviews})</span></div>
      </div>
      <div class="footer">
        <button class="add-btn" data-id="${p.id}">
          <i class="fas fa-cart-plus"></i> Add to cart
        </button>
      </div>
    `;

    // Wishlist toggle
    const wishBtn = el.querySelector('.wish-btn');
    wishBtn.addEventListener('click', (e) => {
      e.stopPropagation();
      wishBtn.classList.toggle('active');
      const icon = wishBtn.querySelector('i');
      icon.className = wishBtn.classList.contains('active')
        ? 'fas fa-heart'
        : 'far fa-heart';
    });

    // Add to cart
    const addBtn = el.querySelector('.add-btn');
    attachRipple(addBtn);
    addBtn.addEventListener('click', (e) => {
      e.stopPropagation();
      addToCart(p.id, addBtn);
    });

    productsGrid.appendChild(el);
  });

  // Re-run observers for the new elements
  observeReveals();
}

/* ============================================================
   RENDER — Testimonials
   ============================================================ */
function renderTestimonials() {
  testimonialStage.innerHTML = '';
  testimonialDots.innerHTML = '';

  TESTIMONIALS.forEach((t, i) => {
    const stars = '★'.repeat(t.stars) + '☆'.repeat(5 - t.stars);
    const card = document.createElement('div');
    card.className = 'testimonial-card' + (i === 0 ? ' active' : '');
    card.innerHTML = `
      <div class="quote-mark">"</div>
      <div class="testimonial-stars">${stars}</div>
      <blockquote>${escapeHtml(t.text)}</blockquote>
      <div class="author">
        <img class="avatar" src="${t.avatar}" alt="${escapeHtml(t.name)}" loading="lazy">
        <div style="text-align:left;">
          <div class="name">${escapeHtml(t.name)}</div>
          <div class="role">${escapeHtml(t.role)}</div>
        </div>
      </div>
    `;
    testimonialStage.appendChild(card);

    const dot = document.createElement('button');
    dot.className = 'testimonial-dot' + (i === 0 ? ' active' : '');
    dot.setAttribute('aria-label', 'Go to testimonial ' + (i + 1));
    dot.addEventListener('click', () => setTestimonial(i));
    testimonialDots.appendChild(dot);
  });

  startTestimonialAutoplay();
}

function setTestimonial(index) {
  activeTestimonial = index;
  const cards = testimonialStage.querySelectorAll('.testimonial-card');
  const dots = testimonialDots.querySelectorAll('.testimonial-dot');
  cards.forEach((c, i) => c.classList.toggle('active', i === index));
  dots.forEach((d, i) => d.classList.toggle('active', i === index));
  startTestimonialAutoplay();
}

function startTestimonialAutoplay() {
  clearInterval(testimonialTimer);
  testimonialTimer = setInterval(() => {
    const next = (activeTestimonial + 1) % TESTIMONIALS.length;
    setTestimonial(next);
  }, 5500);
}

/* ============================================================
   ADD TO CART
   ============================================================ */
function addToCart(id, btnEl) {
  cartCount++;
  cartCountEl.textContent = cartCount;
  cartCountEl.classList.add('pop');
  setTimeout(() => cartCountEl.classList.remove('pop'), 300);

  if (btnEl) {
    const orig = btnEl.innerHTML;
    btnEl.innerHTML = '<i class="fas fa-check"></i> Added!';
    btnEl.classList.add('added');
    setTimeout(() => {
      btnEl.innerHTML = orig;
      btnEl.classList.remove('added');
    }, 1600);
  }
}

/* ============================================================
   FILTER
   ============================================================ */
function filterProducts(query) {
  const q = String(query || '').trim().toLowerCase();
  if (!q) {
    renderProducts(PRODUCTS);
    return;
  }
  const filtered = PRODUCTS.filter(p =>
    p.title.toLowerCase().includes(q) ||
    p.category.toLowerCase().includes(q)
  );
  renderProducts(filtered);
}

/* ============================================================
   HERO SEARCH
   ============================================================ */
const heroSearchInput = document.getElementById('heroSearchInput');
heroSearchInput.addEventListener('keydown', e => {
  if (e.key === 'Enter') {
    filterProducts(e.target.value);
    document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
  }
});
document.querySelectorAll('.hero-tag').forEach(tag => {
  tag.addEventListener('click', () => {
    heroSearchInput.value = tag.dataset.tag;
    filterProducts(tag.dataset.tag);
    document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
  });
});

/* ============================================================
   ROTATING WORD
   ============================================================ */
const rotatorWords = ['tech', 'style', 'audio', 'wearables', 'gadgets'];
let rotatorIdx = 0;
setInterval(() => {
  rotatorIdx = (rotatorIdx + 1) % rotatorWords.length;
  rotator.style.opacity = '0';
  rotator.style.transform = 'translateY(-12px)';
  setTimeout(() => {
    rotator.textContent = rotatorWords[rotatorIdx];
    rotator.style.opacity = '1';
    rotator.style.transform = 'translateY(0)';
  }, 250);
}, 2400);

/* ============================================================
   MOBILE MENU
   ============================================================ */
mobileToggle.addEventListener('click', () => {
  const isOpen = mobileMenu.style.display === 'block';
  mobileMenu.style.display = isOpen ? 'none' : 'block';
  mobileToggle.innerHTML = isOpen
    ? '<i class="fas fa-bars"></i>'
    : '<i class="fas fa-times"></i>';
});
mobileMenu.querySelectorAll('a').forEach(link => {
  link.addEventListener('click', () => {
    mobileMenu.style.display = 'none';
    mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
  });
});

/* ============================================================
   NEWSLETTER
   ============================================================ */
newsletterForm.addEventListener('submit', e => {
  e.preventDefault();
  const email = newsletterEmail.value.trim();
  if (!email || !email.includes('@')) {
    newsletterMsg.textContent = 'Please enter a valid email address.';
    newsletterMsg.style.color = 'var(--red)';
    newsletterMsg.style.display = 'block';
    return;
  }
  newsletterMsg.textContent = '🎉 Thanks! Check your inbox for a welcome gift.';
  newsletterMsg.style.color = 'var(--green)';
  newsletterMsg.style.display = 'block';
  newsletterEmail.value = '';
  setTimeout(() => newsletterMsg.style.display = 'none', 4000);
});

/* ============================================================
   CART BUTTON
   ============================================================ */
document.getElementById('cartBtn').addEventListener('click', () => {
  alert(`🛒 Your cart has ${cartCount} item${cartCount !== 1 ? 's' : ''}.`);
});

/* ============================================================
   FOOTER YEAR
   ============================================================ */
document.getElementById('year').textContent = new Date().getFullYear();

/* ============================================================
   INIT
   ============================================================ */
renderCategories();
renderProducts(PRODUCTS);
renderTestimonials();
observeReveals();

// Resize handler
window.addEventListener('resize', () => {
  if (window.innerWidth > 768) {
    mobileMenu.style.display = 'none';
    mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
  }
});

console.log('%c NEXUS ', 'background:#4285F4;color:#fff;font-weight:700;padding:4px 8px;border-radius:4px;', 'Motion-first e-commerce loaded.');
</script>

</body>
</html>

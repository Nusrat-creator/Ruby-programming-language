<style>
.wrap{font-family:'Segoe UI',system-ui,sans-serif;color:#2c3e50;line-height:1.6;max-width:850px;margin:auto;padding:20px}
.hero{text-align:center;background:linear-gradient(135deg,#667eea,#764ba2);color:#fff;padding:28px;border-radius:12px}
.hero h1{margin:0;font-size:2.1em}
.hero p{margin:8px 0 0;opacity:.9}
.card{background:#fff;border-left:5px solid #667eea;border-radius:10px;padding:18px;margin:18px 0;box-shadow:0 2px 8px rgba(0,0,0,.06)}
.card h2{margin:0 0 10px;color:#764ba2;font-size:1.3em}
.blank{display:inline-block;width:240px;border-bottom:2px dashed #667eea}
.grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(220px,1fr));gap:14px}
.item{background:#f8f9fa;border:1px solid #e9ecef;border-radius:8px;padding:14px}
.item h3{margin:0 0 6px;font-size:1.05em}
.item p{margin:0;font-size:.9em;color:#7f8c8d}
.tag{display:inline-block;margin-top:8px;padding:2px 8px;border-radius:12px;font-size:.75em;font-weight:700}
.wip{background:#fff3cd;color:#856404}
.done{background:#d4edda;color:#155724}
.files{list-style:none;padding:0;margin:0}
.files li{padding:9px 0;border-bottom:1px solid #eee}
.foot{text-align:center;color:#95a5a6;font-size:.9em;margin-top:24px}
</style>
<div class="wrap">
  <div class="hero">
    <h1>🚀 My Learning Journey</h1>
    <p>Notes, projects and daily practice — all in one place.</p>
  </div>
  <div class="card">
    <h2>💻 Currently Learning</h2>
    <p>Language:💎 Ruby<span class="Ruby">&nbsp;</span></p>
  </div>
  <div class="card">
    <h2>📂 Projects</h2>
    <div class="grid">
      <!-- copy one .item block to add a project -->
      <div class="item">
        <h3>Project One:My levenshtein</h3>
        <p>What it does + concepts practised.</p>
        <span class="tag done">✔ Completed</span>
      </div>
      <div class="item">
        <h3>Project Two:Roman numerals converter</h3>
        <p>What it does + concepts practised.</p>
        <span class="tag wip">⏳ In progress</span>
      </div>
    </div>
  </div>
  <div class="card">
    <h2>📝 Ongoing Files</h2>
    <ul class="files">
      <li>📄 <strong>basics.ext</strong> — syntax drills, loops, functions.</li>
      <li>📄 <strong>notes.md</strong> — things I keep forgetting.</li>
      <li>📄 <strong>scratch.ext</strong> — messy experiments.</li>
    </ul>
  </div>
  <div class="foot">Built with ❤️ and too much ☕</div>
</div>


<!-- 💡 Tips for using this template:
The Blank Line: Simply click the blank dashed line under "Currently Learning" in your Markdown editor and type the name of your language (e.g., Rust, Go, Python).
Projects: Duplicate the <div class="item">...</div> block to add more project cards. Change the tag-done class to tag-wip if a project is still being worked on.
Ongoing Files: Update the <li> list items with your actual file names and a short note on what you are currently figuring out in them.
Compatibility: The HTML/CSS is designed to render beautifully on GitHub, GitLab, and most modern Markdown viewers.-->
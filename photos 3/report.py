from reportlab.lib.pagesizes import A4
from reportlab.lib.styles import getSampleStyleSheet, ParagraphStyle
from reportlab.platypus import SimpleDocTemplate, Paragraph, Spacer, Table, TableStyle, PageBreak
from reportlab.lib import colors
from reportlab.graphics.shapes import Drawing, Rect, String

# File path for the PDF
file_path = "/mnt/data/ice_cream_process.pdf"

# Create the PDF document
doc = SimpleDocTemplate(file_path, pagesize=A4,
                        rightMargin=40, leftMargin=40,
                        topMargin=60, bottomMargin=40)

# Set up styles
styles = getSampleStyleSheet()
style_title = styles['Title']
style_h1 = styles['Heading1']
style_h2 = styles['Heading2']
style_normal = styles['Normal']

# Content list
content = []

# Title
content.append(Paragraph("Part 5: Ice Cream Manufacturing Process", style_title))
content.append(Spacer(1, 12))

# Introduction
content.append(Paragraph("Introduction", style_h1))
intro_text = (
    "This section presents the industrial‑scale ice cream manufacturing sequence "
    "observed at Dairy Development Corporation (DDC), Lainchaur, Kathmandu. "
    "The process blends traditional dairy know‑how with modern automation technologies "
    "to deliver safe, consistent and high‑quality products."
)
content.append(Paragraph(intro_text, style_normal))
content.append(Spacer(1, 12))

# Block Diagram placeholder
content.append(Paragraph("5.1 Block Diagram of Industrial Process", style_h1))
w, h = 400, 80
block_drawing = Drawing(w, h)
block_drawing.add(Rect(0, 0, w, h, strokeColor=colors.black, fillColor=None))
block_drawing.add(String(w/2, h/2, "FIGURE 1: Block Diagram – Placeholder", textAnchor="middle"))
content.append(block_drawing)
content.append(Spacer(1, 12))

# Process Flow
content.append(Paragraph("5.2 Process Flow for Ice Cream Manufacturing", style_h1))

steps = [
    ("Step 1: Milk Preparation",
     "Fresh milk is received and steamed to eliminate harmful microorganisms. "
     "Steam is generated on‑site and injected through jacketed vessels to raise the milk to a safe temperature."),
    ("Step 2: Ingredient Mixing",
     "Steamed milk is blended with sugar, cream and flavour concentrates in stainless‑steel mixing tanks, "
     "following standardized recipes."),
    ("Step 3: Pasteurization",
     "The mix is pasteurized at 80–85 °C and rapidly chilled in a closed‑loop pasteurizer, "
     "destroying pathogens and extending shelf life."),
    ("Step 4: Freezing and Homogenization",
     "The cooled mix enters a continuous freezer where simultaneous homogenization breaks down fat globules. "
     "Compressed refrigerants (e.g. Freon / Ammonia) absorb heat while VFD‑driven compressors "
     "and PLC logic keep the temperature tightly regulated."),
    ("Step 5: Filling and Packaging",
     "Semi‑solid ice cream is portioned into cups, cones or tubs, automatically sealed and labelled "
     "with batch IDs for traceability."),
    ("Step 6: Cold Storage",
     "Finished products rest in cold rooms held between −13 °C and −18 °C until distribution, "
     "guarding texture and safety.")
]

for title, desc in steps:
    content.append(Paragraph(title, style_h2))
    content.append(Paragraph(desc, style_normal))
    content.append(Spacer(1, 6))

content.append(Spacer(1, 12))

# Technical Highlights Table
content.append(Paragraph("5.3 Technical Highlights", style_h1))
table_data = [
    ["Stage", "Equipment Used", "Control Technology"],
    ["Steaming", "Steam Boiler", "Manual Temp Control / Timer"],
    ["Mixing", "Stainless Steel Mixers", "Manual or PLC‑Timed"],
    ["Pasteurization", "Plate / Tubular Pasteurizer", "PID Controllers + PLC"],
    ["Freezing", "Continuous Freezer", "VFD, PLC, PWM, Thermocouples"],
    ["Packaging", "Auto Fill & Seal Unit", "Relay Logic + Sensors"],
    ["Cold Storage", "Industrial Refrigeration", "Thermostat Controllers + PLC"]
]

table_style = TableStyle([
    ("BACKGROUND", (0, 0), (-1, 0), colors.lightgrey),
    ("TEXTCOLOR", (0, 0), (-1, 0), colors.black),
    ("ALIGN", (0, 0), (-1, -1), "LEFT"),
    ("GRID", (0, 0), (-1, -1), 0.5, colors.grey),
    ("VALIGN", (0, 0), (-1, -1), "MIDDLE"),
    ("FONTNAME", (0, 0), (-1, 0), "Helvetica-Bold")
])

table = Table(table_data, colWidths=[90, 180, 150])
table.setStyle(table_style)
content.append(table)
content.append(Spacer(1, 12))

# Quality Control & Hygiene
content.append(Paragraph("5.4 Quality Control and Hygiene", style_h1))
qc_text = (
    "Each production batch undergoes chemical, microbiological and sensory evaluation under "
    "the supervision of food technologists. Cleaning‑in‑Place (CIP) systems maintain hygienic "
    "standards, and the facility complies with periodic government inspections."
)
content.append(Paragraph(qc_text, style_normal))
content.append(Spacer(1, 12))

# Observation
content.append(Paragraph("5.5 Observation", style_h1))
observation_text = (
    "\"As observed during the site visit, DDC Lainchaur employs a robust workflow emphasising cleanliness, "
    "temperature precision and automation. Mr Rabindra Bhatta noted that the introduction of modern "
    "control units has boosted consistency and throughput markedly.\""
)
content.append(Paragraph(observation_text, style_normal))
content.append(Spacer(1, 12))

# Closing Statement
closing_text = (
    "The ice‑cream manufacturing process at DDC Lainchaur artfully integrates traditional dairy "
    "practices with contemporary control engineering. The synergistic use of VFDs, PLCs and advanced "
    "cooling systems safeguards product quality while delivering operational efficiency."
)
content.append(Paragraph(closing_text, style_normal))

# Placeholder figures for photos (Fig 2–7)
content.append(PageBreak())
content.append(Paragraph("Appendix A: Photo Placeholders", style_h1))

fig_titles = [
    "FIGURE 2: Milk Reception Area – Placeholder",
    "FIGURE 3: Ingredient Mixing Vat – Placeholder",
    "FIGURE 4: Pasteurizer Unit – Placeholder",
    "FIGURE 5: Continuous Freezer – Placeholder",
    "FIGURE 6: Filling & Packaging Line – Placeholder",
    "FIGURE 7: Cold Storage Chamber – Placeholder"
]

for title in fig_titles:
    ph = Drawing(400, 80)
    ph.add(Rect(0, 0, 400, 80, strokeColor=colors.black, fillColor=None))
    ph.add(String(200, 40, title, textAnchor="middle"))
    content.append(ph)
    content.append(Spacer(1, 12))

# Build the PDF
doc.build(content)

file_path

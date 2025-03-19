# helpers/pdf.py
import os
from reportlab.lib.pagesizes import letter
from reportlab.pdfgen import canvas

def generate_pdf_report(transactions, total_amount, file_path):
    """
    Genera un PDF con la información del reporte:
      - Fecha de la transacción
      - Nombre de la categoría
      - Monto
      - Total final
    """
    c = canvas.Canvas(file_path, pagesize=letter)
    width, height = letter
    y = height - 50

    # Título del reporte
    c.setFont("Helvetica-Bold", 16)
    c.drawString(50, y, "Reporte Mensual de Transacciones")
    y -= 30

    # Monto total
    c.setFont("Helvetica", 12)
    c.drawString(50, y, f"Total de transacciones: {float(total_amount):.2f}")
    y -= 30

    # Cabecera de la tabla
    c.setFont("Helvetica-Bold", 12)
    c.drawString(50, y, "Fecha")
    c.drawString(200, y, "Categoría")
    c.drawString(350, y, "Monto")
    y -= 20
    c.setFont("Helvetica", 12)

    for t in transactions:
        # Fecha formateada (ej. "2025-03-05")
        fecha_str = t.date.strftime("%Y-%m-%d")

        # Nombre de la categoría (ForeignKey)
        if t.category:
            categoria_str = t.category.name
        else:
            categoria_str = "Sin categoría"

        # Monto (asegúrate de convertirlo a float o string con formato)
        monto_str = f"{float(t.amount):.2f}"

        # Escribimos en el PDF
        c.drawString(50, y, fecha_str)
        c.drawString(200, y, categoria_str)
        c.drawString(350, y, monto_str)
        y -= 20

        # Si el espacio es insuficiente, creamos una nueva página
        if y < 50:
            c.showPage()
            y = height - 50
            c.setFont("Helvetica", 12)

    # Guardamos el PDF
    c.save()
    return file_path

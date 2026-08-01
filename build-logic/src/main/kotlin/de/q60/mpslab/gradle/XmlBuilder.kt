package de.q60.mpslab.gradle

/**
 * A tiny XML builder for the small, attribute-only documents this plugin hands to MPS
 * workers (worker scripts, project `modules.xml`). It only models elements and attributes
 * — no text content, namespaces or CDATA, none of which the MPS dump formats use — but it
 * owns escaping and indentation so call sites never concatenate tags by hand.
 *
 * ```
 * xmlDocument("script") {
 *     element("startup") {
 *         element("taskdata") { attr("worker", worker); attr("logLevel", logLevel) }
 *     }
 * }
 * ```
 */
class XmlElement(private val name: String) {
    private val attributes = LinkedHashMap<String, String>()
    private val children = mutableListOf<XmlElement>()

    fun attr(name: String, value: String) = apply { attributes[name] = value }

    fun element(name: String, build: XmlElement.() -> Unit = {}) {
        children.add(XmlElement(name).apply(build))
    }

    internal fun render(sb: StringBuilder, indent: String) {
        sb.append(indent).append('<').append(name)
        attributes.forEach { (k, v) -> sb.append(' ').append(k).append("=\"").append(esc(v)).append('"') }
        if (children.isEmpty()) {
            sb.append(" />\n")
        } else {
            sb.append(">\n")
            children.forEach { it.render(sb, "$indent  ") }
            sb.append(indent).append("</").append(name).append(">\n")
        }
    }

    private fun esc(s: String) = s.replace("&", "&amp;").replace("<", "&lt;")
        .replace(">", "&gt;").replace("\"", "&quot;")
}

/** Renders a full document (XML declaration + [root] element) to a string. */
fun xmlDocument(root: String, build: XmlElement.() -> Unit): String =
    buildString {
        append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n")
        XmlElement(root).apply(build).render(this, "")
    }

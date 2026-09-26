/**
 * VitePress custom theme.
 *
 * Kept deliberately minimal - the stock default theme already suits a research
 * wiki.  The only additions are a small amount of CSS so that the wide tables in
 * these documents (comparison matrices, permission lists, log excerpts) stay
 * readable instead of overflowing the content column.
 */
import DefaultTheme from 'vitepress/theme'
import './custom.css'

export default DefaultTheme

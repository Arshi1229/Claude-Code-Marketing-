# CLAUDE.md - AI Assistant Guidelines for Claude-Code-Marketing

This file provides guidance for AI assistants working on the Claude-Code-Marketing project.

## Project Overview

**Repository:** Claude-Code-Marketing-
**Purpose:** Marketing assets and content for Claude Code (Anthropic's official CLI tool)
**Status:** Initial setup phase

### What is Claude Code?
Claude Code is Anthropic's official command-line interface for Claude, designed to help developers with software engineering tasks directly from the terminal. This repository contains marketing materials, landing pages, and promotional content for Claude Code.

## Repository Structure

```
Claude-Code-Marketing-/
├── README.md           # Project overview and setup instructions
├── CLAUDE.md           # This file - AI assistant guidelines
└── (future directories)
    ├── src/            # Source code for marketing site
    ├── public/         # Static assets (images, icons, fonts)
    ├── content/        # Marketing copy and content
    ├── components/     # UI components
    └── styles/         # Styling files
```

## Development Guidelines

### Code Style & Conventions

1. **File Naming**
   - Use kebab-case for files: `hero-section.tsx`, `feature-card.tsx`
   - Use PascalCase for React components: `HeroSection`, `FeatureCard`
   - Use camelCase for utilities and hooks: `useAnalytics.ts`, `formatDate.ts`

2. **Content Management**
   - Keep marketing copy in dedicated content files, not hardcoded in components
   - Use descriptive variable names for text content
   - Support internationalization from the start if applicable

3. **Assets**
   - Store images in appropriate resolution formats (1x, 2x for retina)
   - Use SVG for icons and logos when possible
   - Optimize all images before committing

### Git Workflow

1. **Branch Naming**
   - Feature branches: `feature/description`
   - Bug fixes: `fix/description`
   - Content updates: `content/description`
   - Claude-assisted branches: `claude/claude-md-*`

2. **Commit Messages**
   - Use conventional commits format
   - Examples:
     - `feat: add hero section with animation`
     - `content: update pricing page copy`
     - `fix: resolve mobile navigation issue`
     - `style: improve button hover states`

3. **Pull Requests**
   - Include screenshots for visual changes
   - Link related issues
   - Request review from appropriate team members

## AI Assistant Instructions

### When Working on This Repository

1. **Content Creation**
   - Maintain consistent brand voice (professional, helpful, technical)
   - Highlight Claude Code's key features: speed, accuracy, security
   - Use clear, concise language avoiding jargon where possible
   - Focus on developer benefits and productivity gains

2. **Code Changes**
   - Follow existing patterns and conventions in the codebase
   - Keep components modular and reusable
   - Ensure responsive design for all screen sizes
   - Test changes across different browsers

3. **Performance Considerations**
   - Optimize images and assets
   - Minimize bundle size
   - Ensure fast page load times
   - Use lazy loading where appropriate

### Key Product Features to Highlight

When creating marketing content, emphasize these Claude Code capabilities:

- **Terminal-native workflow** - Work directly from the command line
- **Multi-file editing** - Handle complex changes across codebases
- **Context awareness** - Understands your project structure
- **Tool integration** - Works with git, testing frameworks, and more
- **Security focus** - Safe code generation practices

### Brand Guidelines

- **Tone:** Professional yet approachable, technically accurate
- **Voice:** Helpful, confident, clear
- **Avoid:** Overpromising, hyperbolic claims, unnecessary buzzwords
- **Emphasis:** Real developer productivity, practical examples

## Testing & Quality Assurance

### Pre-commit Checklist
- [ ] Content is accurate and free of typos
- [ ] Links work correctly
- [ ] Images display properly
- [ ] Responsive design verified
- [ ] Accessibility standards met
- [ ] Performance benchmarks passed

### Accessibility Requirements
- All images must have descriptive alt text
- Color contrast must meet WCAG AA standards
- Keyboard navigation must be fully supported
- Screen reader compatibility required

## Environment Setup

*(To be updated when tech stack is selected)*

### Prerequisites
- Node.js (version TBD)
- Package manager (npm/yarn/pnpm)

### Installation
```bash
# Clone the repository
git clone <repository-url>

# Install dependencies
npm install

# Start development server
npm run dev

# Build for production
npm run build
```

## Deployment

*(To be updated with deployment configuration)*

- **Staging:** TBD
- **Production:** TBD

## Resources

- [Claude Code Documentation](https://docs.anthropic.com/claude-code)
- [Anthropic Brand Guidelines](https://www.anthropic.com)
- [Claude API Documentation](https://docs.anthropic.com)

---

## Notes for AI Assistants

1. **Always read existing files** before making changes to understand current patterns
2. **Keep changes focused** - don't over-engineer or add unnecessary features
3. **Preserve brand consistency** across all marketing materials
4. **Test responsiveness** - marketing sites must look great on all devices
5. **Optimize for conversion** - CTAs should be clear and compelling
6. **Respect content hierarchy** - most important information first

## Change Log

| Date | Author | Changes |
|------|--------|---------|
| 2026-01-29 | Claude | Initial CLAUDE.md creation |

---

*This document should be updated as the project evolves and new conventions are established.*

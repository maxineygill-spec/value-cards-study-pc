# Remix of Value Cards Study_V3 [PC]

Build me a web-based values card negotiation game called 

"Value Cards" using React + TypeScript + Tailwind CSS.

This is a research/educational tool that replicates a 

physical card-trading exercise online. Players are dealt 

random value cards, pick their favorites, negotiate to 

trade for cards they want more, and reflect afterward.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

TECH REQUIREMENTS

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

- React + TypeScript

- Tailwind CSS for styling

- No backend needed for v1 (all state local)

- Mobile responsive

- Export debrief data as JSON at the end

  (for research data collection)

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

VISUAL DESIGN DIRECTION

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

- Dark background (#0a0a0a or deep navy)

- Cards are physical-feeling: rounded corners, 

  slight shadow, cream/white face

- Value name in bold serif font (large)

- Definition in smaller sans-serif below

- Selected/starred cards glow amber/gold

- NPC cards shown in a different color zone 

  (cool blue tones vs player warm tones)

- Clean, minimal, no clutter

- Smooth transitions between phases

- Progress indicator at top (Phase 1 of 5 etc.)

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

THE COMPLETE VALUES DATA

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Store this as a TypeScript const:

const ALL_VALUES = [

  { 

    name: "Creativity", 

    definition: "Generating original ideas and approaching 

    matters in novel ways" 

  },

  { 

    name: "Kindness", 

    definition: "Being considerate, helpful, and caring 

    to oneself and others" 

  },

  { 

    name: "Honesty", 

    definition: "Being truthful and sincere in words 

    and actions" 

  },

  { 

    name: "Order", 

    definition: "Maintaining a stable system of clear 

    and established rules where authority is respected" 

  },

  { 

    name: "Freedom", 

    definition: "Acting and making choices without 

    interventions by others" 

  },

  { 

    name: "Growth", 

    definition: "Continuous self-development, becoming 

    a better version of oneself" 

  },

  { 

    name: "Love", 

    definition: "Experiencing deep affection, connection 

    and strong bonds with friends and family" 

  },

  { 

    name: "Faith", 

    definition: "Drawing motivation and inspiration from 

    belief in something greater than oneself" 

  },

  { 

    name: "Happiness", 

    definition: "Feeling content with one's life, 

    satisfied with one's circumstances" 

  },

  { 

    name: "Justice", 

    definition: "Ensuring everyone gets their due and 

    receives fair treatment" 

  },

  { 

    name: "Authenticity", 

    definition: "Living as one's true self, independent 

    of social pressures" 

  },

  { 

    name: "Power", 

    definition: "Capacity to shape the course of events 

    or influence others" 

  },

  { 

    name: "Curiosity", 

    definition: "Passion for learning, exploring, 

    and understanding" 

  },

  { 

    name: "Peace", 

    definition: "State of calm and harmony, free from 

    conflict and violence" 

  },

  { 

    name: "Humor", 

    definition: "Appreciating life's absurdities, being 

    able to laugh at oneself and the world" 

  },

  { 

    name: "Purity", 

    definition: "Avoiding complicity in wrongdoing, 

    striving to remain uncorrupted and undegraded" 

  },

  { 

    name: "Tradition", 

    definition: "Honoring cultural practices and meanings 

    that connect our past to our future" 

  },

  { 

    name: "Integrity", 

    definition: "Remaining loyal to one's deeply held 

    commitments, applying them consistently" 

  },

  { 

    name: "Compassion", 

    definition: "Empathizing with the suffering of others 

    and caring for their well-being" 

  },

  { 

    name: "Independence", 

    definition: "Ability to be self-sufficient and not 

    reliant on others" 

  },

  { 

    name: "Courage", 

    definition: "Acting on one's beliefs in the face of 

    danger and threats, overcoming fears" 

  },

  { 

    name: "Excellence", 

    definition: "Striving towards exceptional achievements, 

    not compromising on quality" 

  },

  { 

    name: "Diversity", 

    definition: "Engaging people with a wide array of 

    experiences, backgrounds, and perspectives" 

  },

  { 

    name: "Sustainability", 

    definition: "Preserving and protecting the environment 

    for present and future generations" 

  }

]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

NPC DATA

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

const NPC_TYPES = [

  {

    id: "idealist",

    name: "Alex",

    avatar: "⚖️",

    description: "Principled and idealistic",

    coreValues: ["Justice", "Honesty", "Integrity"],

    flexValues: ["Growth", "Curiosity", "Creativity"],

    blindValues: ["Power"],

    negotiationStyle: "principled",

    responses: {

      acceptLow: [

        "I can work with that. {offeredCard} matters 

         to me too, and I think this trade makes sense.",

        "Interesting offer. {offeredCard} aligns with 

         how I try to live. Deal."

      ],

      declineHigh: [

        "I appreciate the offer, but {offeredCard} is 

         really central to who I am. Could you offer 

         something else?",

        "{offeredCard} isn't something I can easily 

         part with. What else do you have?"

      ],

      counterOffer: [

        "What if instead I offered you {counterCard}? 

         I think that gets at what you're really 

         looking for.",

        "I won't trade {offeredCard}, but I could 

         give you {counterCard}. Would that work?"

      ],

      refuseCore: [

        "{offeredCard} is non-negotiable for me. 

         It's at the heart of everything I stand for.",

        "I hear you, but {offeredCard} isn't on the 

         table. Some things aren't tradeable."

      ]

    }

  },

  {

    id: "pragmatist",

    name: "Morgan",

    avatar: "🔧",

    description: "Results-oriented and flexible",

    coreValues: ["Order", "Growth", "Excellence"],

    flexValues: ["Tradition", "Humor", "Peace"],

    blindValues: ["Authenticity"],

    negotiationStyle: "pragmatic",

    responses: {

      acceptLow: [

        "That works. {offeredCard} is useful and 

         I think we both come out ahead here.",

        "Practical choice. I'll take {offeredCard} 

         — it fits what I'm trying to build."

      ],

      declineHigh: [

        "{offeredCard} is doing a lot of work for 

         me right now. What else could you offer?",

        "Not quite. {offeredCard} is too valuable 

         to my goals. Think about what I need."

      ],

      counterOffer: [

        "Let's be practical — {counterCard} gets 

         you further than what you asked for anyway.",

        "Better deal: I give you {counterCard}. 

         More useful, better fit. What do you say?"

      ],

      refuseCore: [

        "{offeredCard} drives everything I do. 

         I can't function without it.",

        "That's a core asset for me. Not for trade 

         at any price."

      ]

    }

  },

  {

    id: "empath",

    name: "Jordan",

    avatar: "💛",

    description: "Warm and relationship-driven",

    coreValues: ["Kindness", "Love", "Compassion"],

    flexValues: ["Happiness", "Peace", "Humor"],

    blindValues: ["Independence"],

    negotiationStyle: "relational",

    responses: {

      acceptLow: [

        "I love that you value {offeredCard}. 

         That tells me something about you. Deal.",

        "Honestly, knowing that {offeredCard} 

         matters to you makes me feel good 

         about this trade."

      ],

      declineHigh: [

        "{offeredCard} is really tied to how I 

         care for people around me. It's hard 

         to let go of. What else might work?",

        "I'd feel a real loss giving up 

         {offeredCard}. Can we find another way?"

      ],

      counterOffer: [

        "What if I gave you {counterCard} instead? 

         I think it might actually mean more to 

         you when you think about it.",

        "How about {counterCard}? I feel like 

         that's what you're really reaching for."

      ],

      refuseCore: [

        "{offeredCard} is how I show up for 

         people. I can't trade that away.",

        "That one's too close to my heart. 

         Some values are load-bearing."

      ]

    }

  },

  {

    id: "skeptic",

    name: "Riley",

    avatar: "🔍",

    description: "Questioning and independent",

    coreValues: ["Curiosity", "Freedom", "Authenticity"],

    flexValues: ["Creativity", "Humor", "Independence"],

    blindValues: ["Order"],

    negotiationStyle: "questioning",

    responses: {

      acceptLow: [

        "Okay, I'll bite. {offeredCard} is 

         interesting enough. But tell me — 

         why are you so eager for mine?",

        "Fine. {offeredCard} opens up 

         possibilities I want to explore. Deal."

      ],

      declineHigh: [

        "Why would I give up {offeredCard}? 

         That's what keeps me thinking clearly. 

         Try again.",

        "Hmm. {offeredCard} is how I stay 

         honest with myself. Not sure 

         I can trade that."

      ],

      counterOffer: [

        "I'll ask you something first: why 

         do you really want {wantedCard}? 

         Maybe {counterCard} is what you 

         actually need.",

        "Counter-proposal: {counterCard}. 

         I think you're solving the wrong 

         problem with your ask."

      ],

      refuseCore: [

        "Absolutely not. {offeredCard} is 

         the whole point for me.",

        "{offeredCard} is what makes me, me. 

         That's not up for debate."

      ]

    }

  },

  {

    id: "guardian",

    name: "Sam",

    avatar: "🛡️",

    description: "Protective and values-preserving",

    coreValues: ["Tradition", "Purity", "Faith"],

    flexValues: ["Order", "Kindness", "Integrity"],

    blindValues: ["Freedom"],

    negotiationStyle: "protective",

    responses: {

      acceptLow: [

        "{offeredCard} has real worth. 

         I can see why you'd value it and 

         why I should too. Agreed.",

        "That's a fair exchange. 

         {offeredCard} holds something 

         important. I'll accept."

      ],

      declineHigh: [

        "I've held {offeredCard} for a reason. 

         It protects something I care about 

         deeply. I need more to let it go.",

        "{offeredCard} is not lightly given. 

         What are you offering that's 

         worth protecting in return?"

      ],

      counterOffer: [

        "I'd rather offer {counterCard}. 

         It's valuable and I think it 

         serves both of us better.",

        "What if we traded differently — 

         {counterCard} from me, and 

         you keep what you have?"

      ],

      refuseCore: [

        "{offeredCard} is sacred ground 

         for me. I won't trade it.",

        "Some things you don't trade. 

         {offeredCard} is one of them 

         for me."

      ]

    }

  }

]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

GAME STATE STRUCTURE

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

type GamePhase = 

  | "mode-select"

  | "glossary"

  | "deal"

  | "prioritize"

  | "want"

  | "negotiate"

  | "resolution"

  | "debrief"

type GameMode = "solo-npc" | "real-player"

interface GameState {

  phase: GamePhase

  mode: GameMode

  deckSize: 18 | 24

  playerHand: Value[]           // dealt cards

  playerTop2: Value[]           // starred cards

  playerWants: Value[]          // desired from outside hand

  playerOffer: Value | null     // what player offers in trade

  playerJustification: string   // why they want/offer

  npcProfile: NPCType

  npcHand: Value[]

  npcTop2: Value[]

  npcWants: Value[]

  negotiationRound: number      // max 3

  tradeOutcome: "success" | "partial" | "failed" | null

  finalPlayerHand: Value[]

  finalNpcHand: Value[]

  debriefAnswers: {

    hardestToGiveUp: string

    whyHardest: string

    didMindChange: boolean

    whatShifted: string

    learnedAboutPartner: string

    hiddenCommonGround: string

  }

  researchData: object          // full session log for export

}

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

COMPLETE SCREEN-BY-SCREEN SPEC

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

─── SCREEN 0: MODE SELECT ───────────────────────

Header: "Value Cards"

Subheader: "A negotiation game about what matters"

Two large cards to click:

[Solo]

"Play against an NPC partner"

"Good for: exploring your values alone"

[With Someone]  

"Share a code with a real person"

"Good for: live negotiations"

(Note: in v1 this can show "coming soon" 

or use a simple room-code system)

Below: deck size toggle

○ 18 cards (standard)  ○ 24 cards (extended)

─── SCREEN 1: GLOSSARY ──────────────────────────

Title: "The Values at Play"

Subtitle: "You'll be working with these 

           [18/24] values today."

Show all values as small cards in a grid

Each card: bold name + definition

Cards are NOT interactive here — 

just reference

"Take a moment to read these.

 You'll be dealt some at random shortly."

Button: "I'm ready →"

─── SCREEN 2: DEAL ──────────────────────────────

Animate cards being "dealt" one by one

Player receives 6 cards (18-deck) 

or 8 cards (24-deck)

Title: "Your hand"

Show cards face-up in a fan or grid

Each card: name (large) + definition (small)

Below cards:

"These values have been randomly dealt to you.

 Take a moment to sit with them."

Button: "Continue →"

─── SCREEN 3: PRIORITIZE ────────────────────────

Title: "Which matter most to you?"

Subtitle: "Select your top 2"

Show same hand of cards

Clicking a card toggles a gold star/glow

Enforce max 2 selections

If player tries to select 3rd: 

  subtle shake animation + 

  "You can only pick 2 — 

   deselect one first"

Show counter: "0/2 selected"

Below selected cards:

Optional text field:

"Why these two? (optional)"

placeholder: "What makes these feel 

              most like you?"

Button disabled until 2 selected: 

"Lock in my top 2 →"

─── SCREEN 4: WANT ──────────────────────────────

Split screen or two sections:

TOP SECTION:

"Your hand" — show all 6/8 cards

  (top 2 glowing gold)

BOTTOM SECTION:

Title: "Cards you weren't dealt"

Show remaining values NOT in player hand

as smaller, slightly greyed cards

Instruction: 

"Pick up to 2 values you'd want 

 to trade for"

Player selects 1-2 from the 

cards-not-in-hand list

Then a required text field appears:

"Why do you want [selected value]?"

placeholder: "What draws you to this one?"

Button: "See who you're trading with →"

─── SCREEN 5: MEET YOUR PARTNER ─────────────────

If NPC mode:

  Reveal NPC with animation

  

  "[Avatar emoji]  Meet [Name]"

  "[Description line]"

  

  "They've been dealt their own hand..."

  

  Show NPC hand face-down as card backs

  

  "They also have values they're 

   holding onto — and some they want."

  

  Button: "Start negotiating →"

─── SCREEN 6: NEGOTIATE ─────────────────────────

This is the most complex screen.

Use a two-panel layout:

LEFT PANEL — YOUR SIDE:

  "Your hand"

  Cards shown (top 2 glowing)

  "You want: [wanted card name]"

RIGHT PANEL — PARTNER'S SIDE:

  "[NPC Name]'s hand" 

  Show NPC cards face-up now

  (NPC top 2 glowing in blue)

  "They want: [NPC wanted card]"

CENTER — NEGOTIATION ZONE:

  

  Round indicator: "Round 1 of 3"

  

  NPC SPEAKS FIRST:

  Speech bubble from NPC:

  "[Dynamic dialogue based on 

   NPC type and what player wants]"

  

  e.g. if player wants Justice 

  and NPC is Alex (Idealist):

  "You want Justice? That's one 

   I hold closely. Tell me — 

   what are you offering, and why 

   should I part with it?"

  

  PLAYER RESPONSE AREA:

  "Offer a card from your hand:"

  [clickable cards from player hand]

  

  "Make your case:" (required)

  [text input]

  placeholder: "Why should they 

                trade with you?"

  

  Button: "Make this offer →"

  

  After player submits:

  NPC evaluates based on this logic:

  

  function evaluateOffer(

    offeredCard: Value,

    npc: NPCType,

    round: number

  ): "accept" | "decline" | "counter" | "refuse" {

    if (npc.coreValues.includes(offeredCard.name)) {

      return "refuse"

    }

    if (npc.flexValues.includes(offeredCard.name)) {

      return "accept"  

    }

    if (round >= 2) {

      return "counter"

    }

    return "decline"

  }

  

  NPC responds with appropriate 

  dialogue from their responses object

  

  Substitute {offeredCard}, {counterCard}, 

  {wantedCard} dynamically in dialogue strings

  

  If "counter": NPC offers an alternative

  card from their flex values

  Player can accept counter or try again

  

  Max 3 rounds then force resolution

  If no deal after 3 rounds: 

  outcome = "failed"

  

  Show outcome clearly:

  ✅ "Deal reached"

  🤝 "Partial deal" (counter accepted)

  ❌ "No deal reached"

─── SCREEN 7: RESOLUTION ────────────────────────

Title: "The Trade"

Side-by-side comparison:

YOUR HAND                 │ [NPC NAME]'S HAND

─────────────────────────────────────────────

Before:                   │ Before:

[all 6 starting cards]    │ [all 6 npc cards]

                          │

After:                    │ After:

[final cards with         │ [final cards]

 traded ones marked]      │

                          │

Lost: [card name]  →→→   │ Gained: [card name]

Gained: ←←← [card name]  │ Lost: [card name]

If no deal:

"You kept your original hand.

 So did [NPC Name]."

 

Brief NPC closing remark 

(one line, based on outcome)

Button: "Reflect on what happened →"

─── SCREEN 8: DEBRIEF ───────────────────────────

Title: "Reflect"

Subtitle: "The conversation matters 

           as much as the cards."

6 questions — all required:

Q1: "Which card was hardest to give up?"

    [dropdown of player's original hand]

Q2: "Why was it hard to let go of?"

    [text area]

Q3: "Did the negotiation change what 

     you wanted or valued?"

    ○ Yes  ○ No

Q4 (shows if Yes): 

    "What shifted for you?"

    [text area]

Q5: "What did you learn about your 

     partner's values?"

    [text area]

Q6: "Was there any hidden common ground 

     you didn't expect?"

    [text area]

Button: "See your summary →"

─── SCREEN 9: SUMMARY + EXPORT ──────────────────

Visual summary card:

┌────────────────────────────────────────┐

│  YOUR VALUES SESSION                   │

│                                        │

│  Started with: [list]                  │

│  Your top 2: [highlighted]             │

│  Wanted: [list]                        │

│  Final hand: [list]                    │

│  Trade outcome: [icon + label]         │

│                                        │

│  Partner: [NPC name + type]            │

│  Their core values: [list]             │

│                                        │

│  Common ground: [any overlap shown]    │

└────────────────────────────────────────┘

Below:

"What you reflected on:"

Show their debrief answers 

formatted nicely

Two buttons:

[Download my data]  →  exports JSON

[Play again]        →  resets to Screen 0

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

RESEARCH DATA EXPORT FORMAT

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

When "Download my data" is clicked, 

export this JSON structure:

{

  "sessionId": "[timestamp-random]",

  "timestamp": "[ISO date]",

  "deckVersion": "18" | "24",

  "mode": "solo-npc",

  "npcType": "[npc id]",

  "phase1_deal": {

    "cardsDealt": ["value names"],

  },

  "phase2_prioritize": {

    "top2Selected": ["value names"],

    "optionalReason": "string"

  },

  "phase3_want": {

    "cardsWanted": ["value names"],

    "justification": "string"

  },

  "phase4_negotiate": {

    "rounds": [

      {

        "round": 1,

        "playerOffered": "value name",

        "playerArgument": "string",

        "npcResponse": "accept|decline|counter|refuse",

        "npcDialogue": "string"

      }

    ],

    "outcome": "success|partial|failed"

  },

  "phase5_resolution": {

    "finalPlayerHand": ["value names"],

    "cardsLost": ["value names"],

    "cardsGained": ["value names"]

  },

  "phase6_debrief": {

    "hardestToGiveUp": "value name",

    "whyHardest": "string",

    "mindChanged": true | false,

    "whatShifted": "string",

    "learnedAboutPartner": "string",

    "hiddenCommonGround": "string"

  }

}

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

ANIMATIONS + MICRO-INTERACTIONS

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

- Cards dealt one by one with 

  150ms stagger (CSS or Framer Motion)

- Selected cards: scale up 1.05 + 

  gold glow box-shadow

- NPC speech bubble: fade in with 

  slight slide up

- Trade resolution: brief flash of 

  green (success) or red (failed)

- Progress bar at top animates 

  between phases

- Card hover: subtle lift shadow

- Refused offer: card shakes 

  (CSS keyframe)

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

COMPONENT STRUCTURE

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

/src

  /components

    ValueCard.tsx         

    // single card — takes value, 

    // isSelected, isTop2, isNPC props

    

    CardHand.tsx          

    // renders a group of ValueCards

    

    NpcSpeechBubble.tsx   

    // animated speech bubble 

    // with NPC avatar

    

    ProgressBar.tsx       

    // phase 1 of 8 etc.

    

    DebriefForm.tsx       

    // all 6 reflection questions

    

    SummaryCard.tsx       

    // final downloadable summary

    

    NegotiationArena.tsx  

    // the two-panel negotiate screen

  

  /data

    values.ts             // ALL_VALUES const

    npcs.ts               // NPC_TYPES const

  

  /hooks

    useGameState.ts       // central state management

    useNpcLogic.ts        // NPC evaluation + dialogue

  

  /screens

    ModeSelect.tsx

    Glossary.tsx

    Deal.tsx

    Prioritize.tsx

    Want.tsx

    MeetPartner.tsx

    Negotiate.tsx

    Resolution.tsx

    Debrief.tsx

    Summary.tsx

  

  App.tsx                 

  // renders current screen based on phase

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

IMPORTANT CONSTRAINTS

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

1. NO case study content yet — 

   player plays as themselves, 

   not as a character

2. "Real player" mode on Mode Select 

   screen can say "Multiplayer — 

   coming soon" and be disabled 

   for now. Just build solo NPC mode.

3. The NPC never "wins" or "loses" — 

   this is not a competition. 

   Avoid any scoring language.

   The outcome is about 

   "understanding reached" not points.

4. Justification text fields are 

   REQUIRED in Phase 3 (want) 

   and Phase 6 (negotiate). 

   Don't allow skipping them.

5. The debrief is NOT optional. 

   No skip button. 

   All 6 questions required.

6. Keep all text warm and 

   conversational — not clinical.

   This is a reflective experience, 

   not a test.

7. On mobile: stack the two-panel 

   negotiate screen vertically 

   (player on top, NPC below)

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

START BY BUILDING:

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

1. The ValueCard component and 

   the ALL_VALUES data file

2. The ModeSelect screen

3. The Glossary screen

4. The Deal screen with animation

5. Wire all screens together 

   with useGameState hook

6. Then build Negotiate screen last 

   as it's the most complex

This project was built with [Lovable](https://lovable.dev).

**Live app**: https://value-cards-study-pc.lovable.app

## Build with Lovable

Continue developing this project in the [Lovable editor](https://lovable.dev/projects/6a547730-aade-4d12-a268-97c202bd8e8f).

- **Ship faster**: describe what you want to build and Lovable handles the code.
- **Stay in sync**: every change made in Lovable is committed straight to this repository.
- **Full ownership**: this code is yours. Push to `main` on GitHub and your changes sync back into Lovable, ready for your next prompt.

## Development

Prefer working locally? You need Node.js and npm — [install with nvm](https://github.com/nvm-sh/nvm#installing-and-updating).

```sh
git clone <this-repository-url>
cd <repository-name>
npm i
npm run dev
```

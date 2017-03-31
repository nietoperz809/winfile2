/*++ BUILD Version: 0001
 *
 *  WOW v1.0
 *
 *  Copyright (c) 1991, Microsoft Corporation
 *
 *  WOWSND.H
 *  16-bit Sound API argument structures
 *
 *  History:
 *  Created 02-Feb-1991 by Jeff Parsons (jeffpar)
--*/


/* Sound API IDs
 */
#define FUN_CLOSESOUND			2   //
#define FUN_COUNTVOICENOTES		13  //
#define FUN_DOBEEP			17  // Internal
#define FUN_GETTHRESHOLDEVENT		14  //
#define FUN_GETTHRESHOLDSTATUS		15  //
#define FUN_MYOPENSOUND 		18  // Internal
#define FUN_OPENSOUND			1   //
#define FUN_SETSOUNDNOISE		7   //
#define FUN_SETVOICEACCENT		5   //
#define FUN_SETVOICEENVELOPE		6   //
#define FUN_SETVOICENOTE		4   //
#define FUN_SETVOICEQUEUESIZE		3   //
#define FUN_SETVOICESOUND		8   //
#define FUN_SETVOICETHRESHOLD		16  //
#define FUN_SOUND_WEP			0   // Export by name
#define FUN_STARTSOUND			9   //
#define FUN_STOPSOUND			10  //
#define FUN_SYNCALLVOICES		12  //
#define FUN_WAITSOUNDSTATE		11  //


/* XLATOFF */
#pragma pack(2)
/* XLATON */

#ifdef NULLSTRUCT
typedef struct _CLOSESOUND16 {			/* s2 */
} CLOSESOUND16;
typedef CLOSESOUND16 UNALIGNED *PCLOSESOUND16;
#endif

typedef struct _COUNTVOICENOTES16 {		/* s13 */
    SHORT f1;
} COUNTVOICENOTES16;
typedef COUNTVOICENOTES16 UNALIGNED *PCOUNTVOICENOTES16;

#ifdef NULLSTRUCT
typedef struct _GETTHRESHOLDEVENT16 {		/* s14 */
} GETTHRESHOLDEVENT16;
typedef GETTHRESHOLDEVENT16 UNALIGNED *PGETTHRESHOLDEVENT16;
#endif

#ifdef NULLSTRUCT
typedef struct _GETTHRESHOLDSTATUS16 {		/* s15 */
} GETTHRESHOLDSTATUS16;
typedef GETTHRESHOLDSTATUS16 UNALIGNED *PGETTHRESHOLDSTATUS16;
#endif

#ifdef NULLSTRUCT
typedef struct _OPENSOUND16 {			/* s1 */
} OPENSOUND16;
typedef OPENSOUND16 UNALIGNED *POPENSOUND16;
#endif

typedef struct _SETSOUNDNOISE16 {		/* s7 */
    SHORT f1;
    SHORT f2;
} SETSOUNDNOISE16;
typedef SETSOUNDNOISE16 UNALIGNED *PSETSOUNDNOISE16;

typedef struct _SETVOICEACCENT16 {		/* s5 */
    SHORT f1;
    SHORT f2;
    SHORT f3;
    SHORT f4;
    SHORT f5;
} SETVOICEACCENT16;
typedef SETVOICEACCENT16 UNALIGNED *PSETVOICEACCENT16;

typedef struct _SETVOICEENVELOPE16 {		/* s6 */
    SHORT f1;
    SHORT f2;
    SHORT f3;
} SETVOICEENVELOPE16;
typedef SETVOICEENVELOPE16 UNALIGNED *PSETVOICEENVELOPE16;

typedef struct _SETVOICENOTE16 {		/* s4 */
    SHORT f1;
    SHORT f2;
    SHORT f3;
    SHORT f4;
} SETVOICENOTE16;
typedef SETVOICENOTE16 UNALIGNED *PSETVOICENOTE16;

typedef struct _SETVOICEQUEUESIZE16 {		/* s3 */
    SHORT f1;
    SHORT f2;
} SETVOICEQUEUESIZE16;
typedef SETVOICEQUEUESIZE16 UNALIGNED *PSETVOICEQUEUESIZE16;

typedef struct _SETVOICESOUND16 {		/* s8 */
    SHORT f1;
    LONG f2;
    SHORT f3;
} SETVOICESOUND16;
typedef SETVOICESOUND16 UNALIGNED *PSETVOICESOUND16;

typedef struct _SETVOICETHRESHOLD16 {		/* s16 */
    SHORT f1;
    SHORT f2;
} SETVOICETHRESHOLD16;
typedef SETVOICETHRESHOLD16 UNALIGNED *PSETVOICETHRESHOLD16;

#ifdef NULLSTRUCT
typedef struct _STARTSOUND16 {			/* s9 */
} STARTSOUND16;
typedef STARTSOUND16 UNALIGNED *PSTARTSOUND16;
#endif

#ifdef NULLSTRUCT
typedef struct _STOPSOUND16 {			/* s10 */
} STOPSOUND16;
typedef STOPSOUND16 UNALIGNED *PSTOPSOUND16;
#endif

#ifdef NULLSTRUCT
typedef struct _SYNCALLVOICES16 {		/* s12 */
} SYNCALLVOICES16;
typedef SYNCALLVOICES16 UNALIGNED *PSYNCALLVOICES16;
#endif

typedef struct _WAITSOUNDSTATE16 {		/* s11 */
    SHORT f1;
} WAITSOUNDSTATE16;
typedef WAITSOUNDSTATE16 UNALIGNED *PWAITSOUNDSTATE16;

/* XLATOFF */
#pragma pack()
/* XLATON */


.class public Lcom/htc/util/calendar/DeleteEventHelper;
.super Ljava/lang/Object;
.source "DeleteEventHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/calendar/DeleteEventHelper$QueryHandler;,
        Lcom/htc/util/calendar/DeleteEventHelper$EventInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final EVENT_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "DeleteEventHelper"


# instance fields
.field private mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCursor:Landroid/database/Cursor;

.field private mDelItems:[Ljava/lang/CharSequence;

.field private mEndMillis:J

.field private mEventIndexId:I

.field private mEventIndexRrule:I

.field private mExitWhenDone:Z

.field private mParent:Landroid/app/Activity;

.field private mQueryHandler:Lcom/htc/util/calendar/DeleteEventHelper$QueryHandler;

.field private mStartMillis:J

.field private mSyncId:Ljava/lang/String;

.field private mWhichAccount:Ljava/lang/String;

.field private mWhichAccountType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 109
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_sync_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "dtend"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "iCalGUID"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "original_sync_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "original_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/util/calendar/DeleteEventHelper;->EVENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 2
    .parameter "parent"
    .parameter "exitWhenDone"

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object v1, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;

    .line 103
    invoke-static {}, Landroid/provider/HtcExCalendar;->getGoogleAccountType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mWhichAccountType:Ljava/lang/String;

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mWhichAccount:Ljava/lang/String;

    .line 107
    iput-object v1, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mQueryHandler:Lcom/htc/util/calendar/DeleteEventHelper$QueryHandler;

    .line 192
    iput-object v1, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mDelItems:[Ljava/lang/CharSequence;

    .line 135
    iput-object p1, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;

    .line 136
    iget-object v0, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 137
    iput-boolean p2, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mExitWhenDone:Z

    .line 139
    new-instance v0, Lcom/htc/util/calendar/DeleteEventHelper$QueryHandler;

    iget-object v1, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/htc/util/calendar/DeleteEventHelper$QueryHandler;-><init>(Lcom/htc/util/calendar/DeleteEventHelper;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mQueryHandler:Lcom/htc/util/calendar/DeleteEventHelper$QueryHandler;

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "exitWhenDone"

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object v1, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;

    .line 103
    invoke-static {}, Landroid/provider/HtcExCalendar;->getGoogleAccountType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mWhichAccountType:Ljava/lang/String;

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mWhichAccount:Ljava/lang/String;

    .line 107
    iput-object v1, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mQueryHandler:Lcom/htc/util/calendar/DeleteEventHelper$QueryHandler;

    .line 192
    iput-object v1, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mDelItems:[Ljava/lang/CharSequence;

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 144
    iput-boolean p2, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mExitWhenDone:Z

    .line 145
    return-void
.end method

.method private DeleteNormalEvent(ZZ)V
    .locals 7
    .parameter "synchExchange"
    .parameter "updateNotification"

    .prologue
    .line 152
    const-string v4, "DeleteEventHelper"

    const-string v5, "Delete Normal Event."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v4, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->isFirst()Z

    move-result v4

    if-nez v4, :cond_0

    .line 154
    iget-object v4, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 155
    const-string v4, "DeleteEventHelper"

    const-string v5, "mCursor move to first"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mEventIndexId:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v1, v4

    .line 159
    .local v1, id:J
    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 160
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v1           #id:J
    .end local v3           #uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DeleteEventHelper"

    const-string v5, "Delete event fail"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private cacheHtcAlertDialg(Lcom/htc/widget/HtcAlertDialog;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 736
    iget-object v0, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 741
    :cond_0
    iput-object p1, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 742
    return-void
.end method

.method private closeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 815
    if-eqz p1, :cond_1

    .line 816
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 817
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 819
    :cond_0
    const/4 p1, 0x0

    .line 821
    :cond_1
    return-void
.end method

.method private deleteEventById(J)V
    .locals 5
    .parameter "event_id"

    .prologue
    const/4 v4, 0x0

    .line 432
    const-string v1, "DeleteEventHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteEventById event_id is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 435
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 436
    return-void
.end method

.method private deleteExceptionEvent(J)V
    .locals 6
    .parameter "eventid"

    .prologue
    const/4 v5, 0x0

    .line 763
    const-string v2, "DeleteEventHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteExceptionEvent eventid is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 767
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "eventStatus"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 768
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 769
    .local v0, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 770
    return-void
.end method

.method private deleteRepeatingEvent(I)V
    .locals 45
    .parameter "which"

    .prologue
    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v38, v0

    if-nez v38, :cond_1

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    const-string v38, "DeleteEventHelper"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "deleteRepeatingEvent -which: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v38, v0

    if-eqz v38, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->isFirst()Z

    move-result v38

    if-nez v38, :cond_2

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->moveToFirst()Z

    .line 454
    const-string v38, "DeleteEventHelper"

    const-string v39, "mCursor move to first"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v38, v0

    const-string v39, "dtstart"

    invoke-interface/range {v38 .. v39}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 457
    .local v22, indexDtstart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v38, v0

    const-string v39, "allDay"

    invoke-interface/range {v38 .. v39}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 458
    .local v19, indexAllDay:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v38, v0

    const-string v39, "title"

    invoke-interface/range {v38 .. v39}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 459
    .local v24, indexTitle:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v38, v0

    const-string v39, "eventTimezone"

    invoke-interface/range {v38 .. v39}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 460
    .local v23, indexTimezone:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v38, v0

    const-string v39, "calendar_id"

    invoke-interface/range {v38 .. v39}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 461
    .local v20, indexCalendarId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v38, v0

    const-string v39, "dtend"

    invoke-interface/range {v38 .. v39}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 463
    .local v21, indexDtend:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mEventIndexRrule:I

    move/from16 v39, v0

    invoke-interface/range {v38 .. v39}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 464
    .local v31, rRule:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v38

    if-eqz v38, :cond_3

    const/4 v7, 0x1

    .line 465
    .local v7, allDay:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 466
    .local v13, dtstart:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 467
    .local v11, dtend:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mEventIndexId:I

    move/from16 v39, v0

    invoke-interface/range {v38 .. v39}, Landroid/database/Cursor;->getInt(I)I

    move-result v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v17, v0

    .line 469
    .local v17, id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v38, v0

    const-string v39, "original_sync_id"

    invoke-interface/range {v38 .. v39}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 470
    .local v26, index_original_sync_id:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 471
    .local v28, originalEventId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v38, v0

    const-string v39, "original_id"

    invoke-interface/range {v38 .. v39}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 472
    .local v25, index_original_id:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v29, v0

    .line 475
    .local v29, original_Id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 476
    .local v35, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 506
    .local v34, timezone:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 690
    .end local v29           #original_Id:J
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mExitWhenDone:Z

    move/from16 v38, v0

    if-eqz v38, :cond_0

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 464
    .end local v7           #allDay:Z
    .end local v11           #dtend:J
    .end local v13           #dtstart:J
    .end local v17           #id:J
    .end local v25           #index_original_id:I
    .end local v26           #index_original_sync_id:I
    .end local v28           #originalEventId:Ljava/lang/String;
    .end local v34           #timezone:Ljava/lang/String;
    .end local v35           #title:Ljava/lang/String;
    :cond_3
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 509
    .restart local v7       #allDay:Z
    .restart local v11       #dtend:J
    .restart local v13       #dtstart:J
    .restart local v17       #id:J
    .restart local v25       #index_original_id:I
    .restart local v26       #index_original_sync_id:I
    .restart local v28       #originalEventId:Ljava/lang/String;
    .restart local v29       #original_Id:J
    .restart local v34       #timezone:Ljava/lang/String;
    .restart local v35       #title:Ljava/lang/String;
    :pswitch_0
    const-string v38, "DeleteEventHelper"

    const-string v39, "deleteRepeatingEvent DELETE_SELECTED"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    new-instance v37, Landroid/content/ContentValues;

    invoke-direct/range {v37 .. v37}, Landroid/content/ContentValues;-><init>()V

    .line 526
    .local v37, values:Landroid/content/ContentValues;
    const-string v38, "title"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mWhichAccountType:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/htc/util/calendar/tools/UriTools;->isGoogleEvent(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_5

    .line 547
    if-eqz v7, :cond_4

    .line 548
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v34

    .line 550
    new-instance v33, Landroid/text/format/Time;

    invoke-direct/range {v33 .. v34}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 551
    .local v33, t:Landroid/text/format/Time;
    invoke-virtual/range {v33 .. v33}, Landroid/text/format/Time;->setToNow()V

    .line 552
    const/16 v38, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 553
    move-object/from16 v0, v33

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v38, v0

    const-wide/16 v40, 0x3e8

    mul-long v5, v38, v40

    .line 554
    .local v5, adjustOffset:J
    const-string v38, "DeleteEventHelper"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "deleteRepeatingEvent allDay event :: timezone:"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " adjustOffset: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mStartMillis:J

    move-wide/from16 v38, v0

    add-long v38, v38, v5

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/util/calendar/DeleteEventHelper;->mStartMillis:J

    .line 556
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mEndMillis:J

    move-wide/from16 v38, v0

    add-long v38, v38, v5

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/util/calendar/DeleteEventHelper;->mEndMillis:J

    .line 558
    const-string v38, "DeleteEventHelper"

    sget-object v39, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v40, "mStartMillis=%d mEndMillis=%d"

    const/16 v41, 0x2

    move/from16 v0, v41

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mStartMillis:J

    move-wide/from16 v43, v0

    invoke-static/range {v43 .. v44}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v43

    aput-object v43, v41, v42

    const/16 v42, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mEndMillis:J

    move-wide/from16 v43, v0

    invoke-static/range {v43 .. v44}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v43

    aput-object v43, v41, v42

    invoke-static/range {v39 .. v41}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    .end local v5           #adjustOffset:J
    .end local v33           #t:Landroid/text/format/Time;
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 587
    .local v8, calendarId:I
    sget-object v16, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 588
    .local v16, event_uri:Landroid/net/Uri;
    const-string v38, "DeleteEventHelper"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "allDay: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const-string v39, "allDay"

    if-eqz v7, :cond_6

    const/16 v38, 0x1

    :goto_4
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 599
    const-string v39, "originalAllDay"

    if-eqz v7, :cond_7

    const/16 v38, 0x1

    :goto_5
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 600
    const-string v39, "eventTimezone"

    if-eqz v7, :cond_8

    const-string v38, "UTC"

    :goto_6
    move-object/from16 v0, v37

    move-object/from16 v1, v39

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v38, "calendar_id"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 604
    const-string v38, "dtstart"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mStartMillis:J

    move-wide/from16 v39, v0

    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 605
    const-string v38, "dtend"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mEndMillis:J

    move-wide/from16 v39, v0

    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 606
    const-string v38, "original_sync_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mSyncId:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v37 .. v39}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string v38, "original_id"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 608
    const-string v38, "originalInstanceTime"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mStartMillis:J

    move-wide/from16 v39, v0

    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 609
    const-string v38, "eventStatus"

    const/16 v39, 0x2

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 611
    const-string v38, "DeleteEventHelper"

    sget-object v39, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v40, "mStartMillis=%d mEndMillis=%d"

    const/16 v41, 0x2

    move/from16 v0, v41

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mStartMillis:J

    move-wide/from16 v43, v0

    invoke-static/range {v43 .. v44}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v43

    aput-object v43, v41, v42

    const/16 v42, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mEndMillis:J

    move-wide/from16 v43, v0

    invoke-static/range {v43 .. v44}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v43

    aput-object v43, v41, v42

    invoke-static/range {v39 .. v41}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 561
    .end local v8           #calendarId:I
    .end local v16           #event_uri:Landroid/net/Uri;
    :cond_5
    if-eqz v7, :cond_4

    .line 562
    new-instance v27, Landroid/text/format/Time;

    invoke-direct/range {v27 .. v27}, Landroid/text/format/Time;-><init>()V

    .line 563
    .local v27, localTime:Landroid/text/format/Time;
    invoke-virtual/range {v27 .. v27}, Landroid/text/format/Time;->setToNow()V

    .line 565
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mStartMillis:J

    move-wide/from16 v38, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v40, v0

    const-wide/16 v42, 0x3e8

    mul-long v40, v40, v42

    add-long v38, v38, v40

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/util/calendar/DeleteEventHelper;->mStartMillis:J

    .line 566
    const-string v38, "DeleteEventHelper"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "all day offset: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v40, v0

    const-wide/16 v42, 0x3e8

    mul-long v40, v40, v42

    invoke-virtual/range {v39 .. v41}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 598
    .end local v27           #localTime:Landroid/text/format/Time;
    .restart local v8       #calendarId:I
    .restart local v16       #event_uri:Landroid/net/Uri;
    :cond_6
    const/16 v38, 0x0

    goto/16 :goto_4

    .line 599
    :cond_7
    const/16 v38, 0x0

    goto/16 :goto_5

    :cond_8
    move-object/from16 v38, v34

    .line 600
    goto/16 :goto_6

    .line 620
    .end local v8           #calendarId:I
    .end local v16           #event_uri:Landroid/net/Uri;
    .end local v37           #values:Landroid/content/ContentValues;
    :pswitch_1
    const-string v38, "DeleteEventHelper"

    const-string v39, "deleteRepeatingEvent  DELETE_ALL."

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mWhichAccountType:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/htc/util/calendar/tools/UriTools;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_a

    .line 623
    const-wide/16 v38, 0x0

    cmp-long v38, v29, v38

    if-eqz v38, :cond_9

    .end local v29           #original_Id:J
    :goto_7
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v29

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/util/calendar/DeleteEventHelper;->deleteExchangeEvent(JZ)V

    goto/16 :goto_2

    .restart local v29       #original_Id:J
    :cond_9
    move-wide/from16 v29, v17

    goto :goto_7

    .line 625
    :cond_a
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/htc/util/calendar/DeleteEventHelper;->deleteEventById(J)V

    goto/16 :goto_2

    .line 630
    :pswitch_2
    const-string v38, "DeleteEventHelper"

    const-string v39, "deleteRepeatingEvent  DELETE_ALL_FOLLOWING."

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 633
    .local v10, dbStartTime:Landroid/text/format/Time;
    invoke-virtual {v10, v13, v14}, Landroid/text/format/Time;->set(J)V

    .line 635
    new-instance v32, Landroid/text/format/Time;

    invoke-direct/range {v32 .. v32}, Landroid/text/format/Time;-><init>()V

    .line 637
    .local v32, startTime:Landroid/text/format/Time;
    if-eqz v7, :cond_b

    .line 638
    new-instance v27, Landroid/text/format/Time;

    invoke-direct/range {v27 .. v27}, Landroid/text/format/Time;-><init>()V

    .line 639
    .restart local v27       #localTime:Landroid/text/format/Time;
    invoke-virtual/range {v27 .. v27}, Landroid/text/format/Time;->setToNow()V

    .line 640
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mStartMillis:J

    move-wide/from16 v38, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v40, v0

    const-wide/16 v42, 0x3e8

    mul-long v40, v40, v42

    add-long v38, v38, v40

    move-object/from16 v0, v32

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 645
    .end local v27           #localTime:Landroid/text/format/Time;
    :goto_8
    if-eqz v7, :cond_c

    .line 646
    iget v0, v10, Landroid/text/format/Time;->year:I

    move/from16 v38, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v39, v0

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_d

    iget v0, v10, Landroid/text/format/Time;->month:I

    move/from16 v38, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v39, v0

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_d

    iget v0, v10, Landroid/text/format/Time;->monthDay:I

    move/from16 v38, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v39, v0

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_d

    .line 649
    const-string v38, "DeleteEventHelper"

    const-string v39, "delete allday"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    sget-object v38, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v38

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v36

    .line 652
    .local v36, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    move-object/from16 v2, v39

    move-object/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_2

    .line 642
    .end local v36           #uri:Landroid/net/Uri;
    :cond_b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mStartMillis:J

    move-wide/from16 v38, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    goto :goto_8

    .line 658
    :cond_c
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mStartMillis:J

    move-wide/from16 v38, v0

    cmp-long v38, v13, v38

    if-nez v38, :cond_d

    .line 659
    const-string v38, "DeleteEventHelper"

    const-string v39, "deleting the first event in the series and all following events"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    sget-object v38, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v38

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v36

    .line 661
    .restart local v36       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    move-object/from16 v2, v39

    move-object/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_2

    .line 667
    .end local v36           #uri:Landroid/net/Uri;
    :cond_d
    new-instance v15, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct {v15}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    .line 668
    .local v15, eventRecurrence:Lcom/android/calendarcommon/EventRecurrence;
    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 669
    new-instance v9, Landroid/text/format/Time;

    invoke-direct {v9}, Landroid/text/format/Time;-><init>()V

    .line 670
    .local v9, date:Landroid/text/format/Time;
    if-eqz v7, :cond_e

    .line 671
    const-string v38, "UTC"

    move-object/from16 v0, v38

    iput-object v0, v9, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 673
    :cond_e
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mStartMillis:J

    move-wide/from16 v38, v0

    move-wide/from16 v0, v38

    invoke-virtual {v9, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 674
    iget v0, v9, Landroid/text/format/Time;->second:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, -0x1

    move/from16 v0, v38

    iput v0, v9, Landroid/text/format/Time;->second:I

    .line 675
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 679
    const-string v38, "UTC"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 680
    invoke-virtual {v9}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    iput-object v0, v15, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    .line 682
    new-instance v37, Landroid/content/ContentValues;

    invoke-direct/range {v37 .. v37}, Landroid/content/ContentValues;-><init>()V

    .line 683
    .restart local v37       #values:Landroid/content/ContentValues;
    const-string v38, "dtstart"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 684
    const-string v38, "rrule"

    invoke-virtual {v15}, Lcom/android/calendarcommon/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    sget-object v38, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v38

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v36

    .line 686
    .restart local v36       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v39

    move-object/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_2

    .line 506
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private doDelete(JJLandroid/database/Cursor;IZZZ)V
    .locals 18
    .parameter "begin"
    .parameter "end"
    .parameter "cursor"
    .parameter "which"
    .parameter "enableUI"
    .parameter "synchExchange"
    .parameter "updateNotification"

    .prologue
    .line 235
    const-string v15, "DeleteEventHelper"

    const-string v16, "doDelete"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    if-nez p5, :cond_0

    .line 316
    :goto_0
    return-void

    .line 239
    :cond_0
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/util/calendar/DeleteEventHelper;->mStartMillis:J

    .line 240
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/util/calendar/DeleteEventHelper;->mEndMillis:J

    .line 241
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    .line 242
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    const-string v16, "_id"

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mEventIndexId:I

    .line 243
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    const-string v16, "rrule"

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mEventIndexRrule:I

    .line 247
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    const-string v16, "account_type"

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 248
    .local v14, sync_account_type_idx:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v15, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 249
    .local v13, sync_account_type:Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mWhichAccountType:Ljava/lang/String;

    .line 251
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    const-string v16, "account_name"

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 252
    .local v12, sync_account_idx:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v15, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 253
    .local v11, sync_account:Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mWhichAccount:Ljava/lang/String;

    .line 257
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    const-string v16, "_sync_id"

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 258
    .local v4, eventIndexSyncId:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mSyncId:Ljava/lang/String;

    .line 262
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    const-string v16, "original_sync_id"

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 263
    .local v8, index_original_sync_id:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v15, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 265
    .local v9, originalEventId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mEventIndexRrule:I

    move/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 289
    .local v10, rRule:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mEventIndexId:I

    move/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 290
    .local v7, id:I
    const-string v15, "DeleteEventHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "event id is :"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 293
    const-string v15, "DeleteEventHelper"

    const-string v16, "start to DeleteNormalEvent"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    move-object/from16 v0, p0

    move/from16 v1, p8

    move/from16 v2, p9

    invoke-direct {v0, v1, v2}, Lcom/htc/util/calendar/DeleteEventHelper;->DeleteNormalEvent(ZZ)V

    goto/16 :goto_0

    .line 298
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/htc/util/calendar/DeleteEventHelper;->getExceptionEventId(I)J

    move-result-wide v5

    .line 300
    .local v5, exception_event_id:J
    const-wide/16 v15, -0x1

    cmp-long v15, v5, v15

    if-eqz v15, :cond_2

    if-nez p6, :cond_2

    .line 302
    const-string v15, "DeleteEventHelper"

    const-string v16, "start to deleteExceptionEvent"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/htc/util/calendar/DeleteEventHelper;->deleteExceptionEvent(J)V

    goto/16 :goto_0

    .line 307
    :cond_2
    :try_start_0
    const-string v15, "DeleteEventHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "start to deleteRepeatingEvent which is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/htc/util/calendar/DeleteEventHelper;->deleteRepeatingEvent(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 310
    :catch_0
    move-exception v3

    .line 311
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private getExceptionEventId(I)J
    .locals 7
    .parameter "parentid"

    .prologue
    const-wide/16 v2, -0x1

    .line 799
    invoke-direct {p0, p1}, Lcom/htc/util/calendar/DeleteEventHelper;->queryExceptionEvent(I)Landroid/database/Cursor;

    move-result-object v0

    .line 801
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_1

    .line 810
    :cond_0
    :goto_0
    return-wide v2

    .line 803
    :cond_1
    const-string v4, "DeleteEventHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "c count is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_0

    .line 806
    const-string v4, "_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 807
    .local v1, eventid:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v2, v4

    .line 808
    .local v2, id:J
    const-string v4, "DeleteEventHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isExceptionEvent id is :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    invoke-direct {p0, v0}, Lcom/htc/util/calendar/DeleteEventHelper;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method private queryExceptionEvent(I)Landroid/database/Cursor;
    .locals 9
    .parameter "parentid"

    .prologue
    const/4 v8, 0x0

    .line 774
    const-string v0, "DeleteEventHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryExceptionEvent parentid is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    move-object v6, v8

    .line 793
    :goto_0
    return-object v6

    .line 778
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dtstart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mStartMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dtend"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mEndMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "original_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 783
    .local v3, where:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/util/calendar/DeleteEventHelper;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 784
    .local v6, EventCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 785
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 790
    .end local v6           #EventCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 791
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    move-object v6, v8

    .line 793
    goto :goto_0

    .end local v7           #e:Ljava/lang/Exception;
    .restart local v6       #EventCursor:Landroid/database/Cursor;
    :cond_1
    move-object v6, v8

    .line 788
    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 748
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 749
    return-void
.end method

.method public delete(JJJI)V
    .locals 12
    .parameter "begin"
    .parameter "end"
    .parameter "eventId"
    .parameter "which"

    .prologue
    .line 182
    const-string v3, "DeleteEventHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delete event directly eventId is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p5

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 186
    .local v11, uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mQueryHandler:Lcom/htc/util/calendar/DeleteEventHelper$QueryHandler;

    if-eqz v3, :cond_0

    .line 187
    new-instance v2, Lcom/htc/util/calendar/DeleteEventHelper$EventInfo;

    move-object v3, p0

    move-wide/from16 v4, p5

    move-wide v6, p1

    move-wide v8, p3

    move/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/htc/util/calendar/DeleteEventHelper$EventInfo;-><init>(Lcom/htc/util/calendar/DeleteEventHelper;JJJI)V

    .line 188
    .local v2, ei:Lcom/htc/util/calendar/DeleteEventHelper$EventInfo;
    iget-object v3, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mQueryHandler:Lcom/htc/util/calendar/DeleteEventHelper$QueryHandler;

    const/4 v4, 0x0

    sget-object v7, Lcom/htc/util/calendar/DeleteEventHelper;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v2

    move-object v6, v11

    invoke-virtual/range {v3 .. v10}, Lcom/htc/util/calendar/DeleteEventHelper$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .end local v2           #ei:Lcom/htc/util/calendar/DeleteEventHelper$EventInfo;
    :cond_0
    return-void
.end method

.method public delete(JJLandroid/database/Cursor;IZZZ)V
    .locals 3
    .parameter "begin"
    .parameter "end"
    .parameter "cursor"
    .parameter "which"
    .parameter "enableUI"
    .parameter "synchExchange"
    .parameter "updateNotification"

    .prologue
    .line 350
    if-nez p5, :cond_0

    .line 359
    :goto_0
    return-void

    .line 353
    :cond_0
    :try_start_0
    const-string v1, "DeleteEventHelper"

    const-string v2, "start to doDelete."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-direct/range {p0 .. p9}, Lcom/htc/util/calendar/DeleteEventHelper;->doDelete(JJLandroid/database/Cursor;IZZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DeleteEventHelper"

    const-string v2, "delete exception!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteExchangeEvent(JZ)V
    .locals 17
    .parameter "del_event_id"
    .parameter "onlyThis"

    .prologue
    .line 362
    const-string v2, "DeleteEventHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteExchangeEvent del_event_id:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " onlyThis: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    .line 365
    const-string v2, "DeleteEventHelper"

    const-string v3, "del_event_id < 0"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "original_id"

    aput-object v3, v4, v2

    .line 372
    .local v4, PROJECTION:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 374
    .local v8, INDEX_EVENT_ID:I
    const-string v5, ""

    .line 375
    .local v5, where:Ljava/lang/String;
    if-eqz p3, :cond_2

    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 380
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 385
    .local v10, cursor:Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 386
    .local v15, nCount:I
    const-wide/16 v13, 0x0

    .line 387
    .local v13, event_id:J
    if-eqz v10, :cond_0

    .line 388
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v15

    .line 390
    if-eqz v15, :cond_4

    .line 391
    const/4 v2, -0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 394
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .local v16, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 397
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 398
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 399
    .local v12, eventUri:Landroid/net/Uri;
    invoke-static {v12}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 400
    .local v9, b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 378
    .end local v9           #b:Landroid/content/ContentProviderOperation$Builder;
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v12           #eventUri:Landroid/net/Uri;
    .end local v13           #event_id:J
    .end local v15           #nCount:I
    .end local v16           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR original_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 406
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v13       #event_id:J
    .restart local v15       #nCount:I
    .restart local v16       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "com.android.calendar"

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 422
    .end local v16           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_4
    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    .line 423
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 425
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 413
    .restart local v16       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_0
    move-exception v11

    .line 414
    .local v11, e:Landroid/os/RemoteException;
    const-string v2, "DeleteEventHelper"

    const-string v3, "Ignoring unexpected remote exception"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 415
    .end local v11           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v11

    .line 416
    .local v11, e:Landroid/content/OperationApplicationException;
    const-string v2, "DeleteEventHelper"

    const-string v3, "Ignoring unexpected exception"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 752
    iget-object v0, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mQueryHandler:Lcom/htc/util/calendar/DeleteEventHelper$QueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/util/calendar/DeleteEventHelper$QueryHandler;->cancelOperation(I)V

    .line 753
    iput-object v2, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mQueryHandler:Lcom/htc/util/calendar/DeleteEventHelper$QueryHandler;

    .line 754
    iput-object v2, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 755
    iput-object v2, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 756
    iput-object v2, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;

    .line 757
    return-void
.end method

.method public setExitWhenDone(Z)V
    .locals 0
    .parameter "exitWhenDone"

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mExitWhenDone:Z

    .line 149
    return-void
.end method

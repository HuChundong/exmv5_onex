.class public Landroid/provider/CallLog$Calls;
.super Ljava/lang/Object;
.source "CallLog.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Calls"
.end annotation


# static fields
.field public static final ALLOW_VOICEMAILS_PARAM_KEY:Ljava/lang/String; = "allow_voicemails"

.field public static final BEARER_HD_VOICE:I = 0x3

.field public static final BEARER_NO_SPECIFIED:I = 0x0

.field public static final BEARER_VIDEO:I = 0x2

.field public static final BEARER_VOICE:I = 0x1

.field public static final CACHED_FORMATTED_NUMBER:Ljava/lang/String; = "formatted_number"

.field public static final CACHED_LOOKUP_URI:Ljava/lang/String; = "lookup_uri"

.field public static final CACHED_MATCHED_NUMBER:Ljava/lang/String; = "matched_number"

.field public static final CACHED_NAME:Ljava/lang/String; = "name"

.field public static final CACHED_NORMALIZED_NUMBER:Ljava/lang/String; = "normalized_number"

.field public static final CACHED_NUMBER_LABEL:Ljava/lang/String; = "numberlabel"

.field public static final CACHED_NUMBER_TYPE:Ljava/lang/String; = "numbertype"

.field public static final CACHED_PHOTO_ID:Ljava/lang/String; = "photo_id"

.field public static final CALL_DURATION:Ljava/lang/String; = "call_duration"

.field public static final CALL_TYPE:Ljava/lang/String; = "callType"

.field public static final CITY_ID:Ljava/lang/String; = "city_id"

.field public static final CNAME:Ljava/lang/String; = "cname"

.field public static final CONTENT_FILTER_URI:Landroid/net/Uri; = null

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/calls"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/calls"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI_WITH_PHOTO:Landroid/net/Uri; = null

.field public static final CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri; = null

.field public static final COUNTRY_ISO:Ljava/lang/String; = "countryiso"

.field public static final CS_LOCAL_UUID:Ljava/lang/String; = "cs_local_uuid"

.field public static final CS_TIMESTAMP:Ljava/lang/String; = "cs_timestamp"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final GEOCODED_LOCATION:Ljava/lang/String; = "geocoded_location"

.field public static final INCOMING_TYPE:I = 0x1

.field public static final IS_READ:Ljava/lang/String; = "is_read"

.field public static final MISSED_TYPE:I = 0x3

.field public static final NEW:Ljava/lang/String; = "new"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final OUTGOING_TYPE:I = 0x2

.field public static final PHONE_TYPE:Ljava/lang/String; = "phone_type"

.field public static final RAW_CONTACT_ID:Ljava/lang/String; = "raw_contact_id"

.field public static final TABLE_NAME:Ljava/lang/String; = "calls"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final VOICEMAIL_TYPE:I = 0x4

.field public static final VOICEMAIL_URI:Ljava/lang/String; = "voicemail_uri"

.field static sExtraCallLogValues:Landroid/content/ContentValues;
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    sput-object v0, Landroid/provider/CallLog$Calls;->sExtraCallLogValues:Landroid/content/ContentValues;

    const-string v0, "content://call_log/calls"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 65
    const-string v0, "content://call_log/calls/filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 87
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "allow_voicemails"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    .line 296
    const-string v0, "content://call_log/calls_photo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_PHOTO:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJI)Landroid/net/Uri;
    .locals 11
    .parameter "ci"
    .parameter "context"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "start"
    .parameter "duration"

    .prologue
    .line 393
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    invoke-static/range {v0 .. v10}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIII)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJII)Landroid/net/Uri;
    .locals 11
    .parameter "ci"
    .parameter "context"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "start"
    .parameter "duration"
    .parameter "bearer"

    .prologue
    .line 362
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v8

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v10, p8

    invoke-static/range {v0 .. v10}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIII)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIII)Landroid/net/Uri;
    .locals 11
    .parameter "ci"
    .parameter "context"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "start"
    .parameter "duration"
    .parameter "phoneType"
    .parameter "call_duration"

    .prologue
    .line 425
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v0 .. v10}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIII)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIII)Landroid/net/Uri;
    .locals 20
    .parameter "ci"
    .parameter "context"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "start"
    .parameter "duration"
    .parameter "phoneType"
    .parameter "call_duration"
    .parameter "bearer"

    .prologue
    .line 461
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 465
    .local v3, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 466
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/SimSlotManager;->getInstance()Lcom/android/internal/telephony/SimSlotManager;

    .line 473
    :cond_1
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    move/from16 v0, p3

    if-ne v0, v4, :cond_d

    .line 474
    const-string p2, "-2"

    .line 475
    if-eqz p0, :cond_2

    const-string v4, ""

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 486
    :cond_2
    :goto_0
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 487
    :cond_3
    new-instance v17, Landroid/content/ContentValues;

    const/4 v4, 0x7

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 493
    invoke-static {v0}, Landroid/provider/CallLog$Injector;->getExtraCallLogValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v17

    .local v17, values:Landroid/content/ContentValues;
    :goto_1
    const-string/jumbo v4, "number"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string/jumbo v4, "type"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 495
    const-string v4, "date"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 496
    const-string v4, "duration"

    move/from16 v0, p7

    int-to-long v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 497
    const-string/jumbo v4, "new"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 499
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 500
    :cond_4
    const-string/jumbo v4, "phone_type"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 501
    const-string v4, "call_duration"

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 505
    :cond_5
    const/4 v4, 0x3

    move/from16 v0, p4

    if-ne v0, v4, :cond_6

    .line 506
    const-string v4, "is_read"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 509
    :cond_6
    if-eqz p10, :cond_7

    .line 510
    const-string v4, "callType"

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 513
    :cond_7
    if-eqz p0, :cond_8

    .line 514
    const-string/jumbo v4, "name"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const-string/jumbo v4, "numbertype"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 516
    const-string/jumbo v4, "numberlabel"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    :cond_8
    if-eqz p0, :cond_a

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_a

    .line 522
    const-string/jumbo v4, "raw_contact_id"

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/internal/telephony/CallerInfo;->rawContactId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 525
    const-string/jumbo v4, "numbertype"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 536
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    if-eqz v4, :cond_11

    .line 537
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    .line 538
    .local v14, normalizedPhoneNumber:Ljava/lang/String;
    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const-string v6, "contact_id =? AND data4 =?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v7, v8

    const/4 v8, 0x1

    aput-object v14, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 554
    .end local v14           #normalizedPhoneNumber:Ljava/lang/String;
    .local v12, cursor:Landroid/database/Cursor;
    :goto_2
    if-eqz v12, :cond_a

    .line 556
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_9

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 557
    sget-object v4, Landroid/provider/ContactsContract$DataUsageFeedback;->FEEDBACK_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v5, "type"

    const-string v6, "call"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v13

    .line 562
    .local v13, feedbackUri:Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v13, v4, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    .end local v13           #feedbackUri:Landroid/net/Uri;
    :cond_9
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 571
    .end local v12           #cursor:Landroid/database/Cursor;
    :cond_a
    if-eqz p0, :cond_c

    .line 572
    const-string v4, "CITY_ID"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/CallerInfo;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 573
    .local v10, cityId:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 574
    const-string v4, "city_id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    :cond_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 579
    .local v11, cname:Ljava/lang/String;
    const/4 v9, 0x0

    .line 584
    .local v9, FAKE_CNAME:Z
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 585
    const-string v4, "cname"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    .end local v9           #FAKE_CNAME:Z
    .end local v10           #cityId:Ljava/lang/String;
    .end local v11           #cname:Ljava/lang/String;
    :cond_c
    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v16

    .line 593
    .local v16, result:Landroid/net/Uri;
    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$Injector;->removeExpiredEntries(Landroid/content/Context;)V

    .line 596
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    invoke-static {v0, v1, v2}, Landroid/provider/CallLog$Calls;->addFrequentCount(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;I)V

    .line 599
    return-object v16

    .line 476
    .end local v16           #result:Landroid/net/Uri;
    .end local v17           #values:Landroid/content/ContentValues;
    :cond_d
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    move/from16 v0, p3

    if-ne v0, v4, :cond_e

    .line 477
    const-string p2, "-3"

    .line 478
    if-eqz p0, :cond_2

    const-string v4, ""

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 479
    :cond_e
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    move/from16 v0, p3

    if-ne v0, v4, :cond_2

    .line 481
    :cond_f
    const-string p2, "-1"

    .line 482
    if-eqz p0, :cond_2

    const-string v4, ""

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 489
    :cond_10
    new-instance v17, Landroid/content/ContentValues;

    const/4 v4, 0x5

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .restart local v17       #values:Landroid/content/ContentValues;
    goto/16 :goto_1

    .line 544
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 545
    .local v15, phoneNumber:Ljava/lang/String;
    :goto_3
    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Callable;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v15}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const-string v6, "contact_id =?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .restart local v12       #cursor:Landroid/database/Cursor;
    goto/16 :goto_2

    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v15           #phoneNumber:Ljava/lang/String;
    :cond_12
    move-object/from16 v15, p2

    .line 544
    goto :goto_3

    .line 565
    .restart local v12       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v4

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method private static addFrequentCount(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;I)V
    .locals 6
    .parameter "ci"
    .parameter "context"
    .parameter "callType"

    .prologue
    .line 638
    if-eqz p0, :cond_0

    .line 640
    const/4 v1, -0x1

    .line 641
    .local v1, in_out:I
    const/4 v0, 0x2

    if-ne v0, p2, :cond_1

    .line 642
    const/4 v1, 0x0

    .line 651
    :goto_0
    iget-wide v2, p0, Lcom/android/internal/telephony/CallerInfo;->rawContactId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    if-gez v1, :cond_3

    .line 657
    .end local v1           #in_out:I
    :cond_0
    :goto_1
    return-void

    .line 644
    .restart local v1       #in_out:I
    :cond_1
    const/4 v0, 0x1

    if-eq v0, p2, :cond_2

    const/4 v0, 0x3

    if-ne v0, p2, :cond_0

    .line 645
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 654
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide/16 v2, -0x1

    iget-wide v4, p0, Lcom/android/internal/telephony/CallerInfo;->rawContactId:J

    invoke-static/range {v0 .. v5}, Landroid/provider/CallLog$Calls;->markAsFromCall(Landroid/content/ContentResolver;IJJ)V

    goto :goto_1
.end method

.method public static getLastOutgoingCall(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    .line 609
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 610
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 612
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "number"

    aput-object v4, v2, v3

    const-string/jumbo v3, "type = 2"

    const/4 v4, 0x0

    const-string v5, "date DESC LIMIT 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 618
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_2

    .line 619
    :cond_0
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    if-eqz v6, :cond_1

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 621
    :cond_1
    return-object v1

    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 623
    if-eqz v6, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method private static markAsFromCall(Landroid/content/ContentResolver;IJJ)V
    .locals 5
    .parameter "resolver"
    .parameter "in_out"
    .parameter "dataId"
    .parameter "rawContactId"

    .prologue
    const/4 v4, 0x0

    .line 660
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 661
    .local v0, type:I
    :goto_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 662
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "data_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 663
    const-string/jumbo v2, "type"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 664
    const-string/jumbo v2, "raw_contact_id"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 665
    const-string v2, "content://com.android.contacts"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "frequency/update"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 666
    return-void

    .line 660
    .end local v0           #type:I
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private static removeExpiredEntries(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 628
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 629
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id IN (SELECT _id FROM calls ORDER BY date DESC LIMIT -1 OFFSET 500)"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 632
    return-void
.end method

.method public static setExtraCallLogValues(Landroid/content/ContentValues;)V
    .locals 0
    .parameter "extraCallLogValues"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    sput-object p0, Landroid/provider/CallLog$Calls;->sExtraCallLogValues:Landroid/content/ContentValues;

    return-void
.end method

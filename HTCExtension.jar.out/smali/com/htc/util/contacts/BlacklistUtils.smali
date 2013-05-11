.class public Lcom/htc/util/contacts/BlacklistUtils;
.super Ljava/lang/Object;
.source "BlacklistUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/contacts/BlacklistUtils$BlockCallNote;
    }
.end annotation


# static fields
.field public static final BLOCKED_RUIM:Ljava/lang/String; = "block_ruim"

.field public static final BLOCKED_SIM:Ljava/lang/String; = "block_sim"

.field public static final BLOCKED_SUBSIM:Ljava/lang/String; = "block_subsim"

.field public static final BLOCK_UPDATE_ID_LIST:Ljava/lang/String; = "block_id_list"

.field public static final BLOCK_UPDATE_INTENT:Ljava/lang/String; = "com.htc.contacts.actions.BLACK_LIST_UPDATE"

.field public static final BLOCK_UPDATE_NUMBER_List:Ljava/lang/String; = "block_number_list"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final PHONE_NUMBER_SEPARATORS:Ljava/lang/String; = " ()-./"

.field public static final PRRAM_BLOCKED_TYPE:Ljava/lang/String; = "PRRAM_BLOCKED_TYPE"

.field public static final RUIM_TOKEN:Ljava/lang/String; = "RUIM"

.field private static final TAG:Ljava/lang/String; = "BlacklistUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    sget-boolean v0, Lcom/htc/util/contacts/ContactsUtility;->DEBUG:Z

    sput-boolean v0, Lcom/htc/util/contacts/BlacklistUtils;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 537
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/htc/util/contacts/BlacklistUtils;->DEBUG:Z

    return v0
.end method

.method public static addBlackNumber(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "black_number"

    .prologue
    .line 239
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 240
    :cond_0
    const-string v3, "BlacklistUtils"

    const-string v4, "incorrect parameter at addBlackNumber"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :goto_0
    return-void

    .line 244
    :cond_1
    sget-object v0, Lcom/htc/provider/HtcContactsContract$BLOCKED_NUMBER;->CONTENT_URI:Landroid/net/Uri;

    .line 245
    .local v0, BLACK_NUMBER_URI:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 246
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "number"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 250
    :catch_0
    move-exception v1

    .line 252
    .local v1, e:Landroid/database/sqlite/SQLiteConstraintException;
    const-string v3, "BlacklistUtils"

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConstraintException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static addBlackNumberAndCheckDuplicateAndNotify(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 12
    .parameter "context"
    .parameter "number"

    .prologue
    .line 257
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 258
    :cond_0
    const-string v1, "BlacklistUtils"

    const-string v2, "incorrect parameter at addBlackNumberAndCheckDuplicateAndNotify"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v7, 0x0

    .line 302
    :cond_1
    :goto_0
    return-object v7

    .line 262
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 264
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "contact_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "account_type"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "display_name"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PHONE_NUMBERS_EQUAL( data1 , \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 268
    .local v8, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 269
    .local v9, findContactExisted:Z
    const/4 v7, 0x0

    .line 270
    .local v7, bundle:Landroid/os/Bundle;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v11, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v8, :cond_6

    .line 273
    :cond_3
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 274
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 275
    .local v10, id:I
    if-lez v10, :cond_3

    .line 276
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 278
    .local v6, accountType:Ljava/lang/String;
    const-string v1, "com.anddroid.contacts.sim"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 279
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, v10

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/htc/util/contacts/BlacklistUtils;->modifySendToVoiceMailForSim(Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 282
    :goto_2
    const/4 v9, 0x1

    .line 283
    if-nez v7, :cond_3

    .line 285
    new-instance v7, Landroid/os/Bundle;

    .end local v7           #bundle:Landroid/os/Bundle;
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 286
    .restart local v7       #bundle:Landroid/os/Bundle;
    const-string v1, "name"

    const/4 v2, 0x2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v1, "number"

    invoke-virtual {v7, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 281
    :cond_4
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, v10

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/htc/util/contacts/BlacklistUtils;->modifySendToVoiceMail(Landroid/content/Context;Landroid/net/Uri;Z)V

    goto :goto_2

    .line 291
    .end local v6           #accountType:Ljava/lang/String;
    .end local v10           #id:I
    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 293
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 294
    const/4 v1, 0x0

    invoke-static {p0, v11, v1}, Lcom/htc/util/contacts/BlacklistUtils;->notifyUpdateBlacklist(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 299
    :cond_6
    if-nez v9, :cond_1

    .line 300
    invoke-static {p0, p1}, Lcom/htc/util/contacts/BlacklistUtils;->addBlackNumberAndNotify(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static addBlackNumberAndNotify(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "black_number"

    .prologue
    .line 229
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    :cond_0
    const-string v0, "BlacklistUtils"

    const-string v1, "incorrect parameter at addBlackNumberAndNotify"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_1
    invoke-static {p0, p1}, Lcom/htc/util/contacts/BlacklistUtils;->addBlackNumber(Landroid/content/Context;Ljava/lang/String;)V

    .line 235
    invoke-static {p0, p1}, Lcom/htc/util/contacts/BlacklistUtils;->notifyUpdateBlackList(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static addContactToBlacklist(Landroid/content/Context;JZLjava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "person_id"
    .parameter "isSim"
    .parameter "number"

    .prologue
    const/4 v2, 0x1

    .line 430
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_1

    .line 431
    if-eqz p3, :cond_0

    .line 433
    new-instance v1, Lcom/htc/util/contacts/BlacklistUtils$4;

    invoke-direct {v1, p1, p2, p0}, Lcom/htc/util/contacts/BlacklistUtils$4;-><init>(JLandroid/content/Context;)V

    .line 440
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 471
    .end local v1           #thread:Ljava/lang/Thread;
    :goto_0
    return v2

    .line 444
    :cond_0
    new-instance v1, Lcom/htc/util/contacts/BlacklistUtils$5;

    invoke-direct {v1, p1, p2, p0}, Lcom/htc/util/contacts/BlacklistUtils$5;-><init>(JLandroid/content/Context;)V

    .line 451
    .restart local v1       #thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 457
    .end local v1           #thread:Ljava/lang/Thread;
    :cond_1
    invoke-static {p4}, Lcom/htc/util/contacts/BlacklistUtils;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, black_number:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 459
    new-instance v1, Lcom/htc/util/contacts/BlacklistUtils$6;

    invoke-direct {v1, p0, v0}, Lcom/htc/util/contacts/BlacklistUtils$6;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 465
    .restart local v1       #thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 471
    .end local v1           #thread:Ljava/lang/Thread;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static addContactToBlacklist(Landroid/content/Context;JZZLjava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "person_id"
    .parameter "isSim"
    .parameter "isRuim"
    .parameter "number"

    .prologue
    const/4 v2, 0x1

    .line 383
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_1

    .line 384
    if-eqz p3, :cond_0

    .line 386
    new-instance v1, Lcom/htc/util/contacts/BlacklistUtils$1;

    invoke-direct {v1, p1, p2, p0, p4}, Lcom/htc/util/contacts/BlacklistUtils$1;-><init>(JLandroid/content/Context;Z)V

    .line 393
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 424
    .end local v1           #thread:Ljava/lang/Thread;
    :goto_0
    return v2

    .line 397
    :cond_0
    new-instance v1, Lcom/htc/util/contacts/BlacklistUtils$2;

    invoke-direct {v1, p1, p2, p0}, Lcom/htc/util/contacts/BlacklistUtils$2;-><init>(JLandroid/content/Context;)V

    .line 404
    .restart local v1       #thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 410
    .end local v1           #thread:Ljava/lang/Thread;
    :cond_1
    invoke-static {p5}, Lcom/htc/util/contacts/BlacklistUtils;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, black_number:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 412
    new-instance v1, Lcom/htc/util/contacts/BlacklistUtils$3;

    invoke-direct {v1, p0, v0}, Lcom/htc/util/contacts/BlacklistUtils$3;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 418
    .restart local v1       #thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 424
    .end local v1           #thread:Ljava/lang/Thread;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static copySingleContactToSyncAndNotify(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .parameter "context"
    .parameter "contactUri"
    .parameter "accountType"
    .parameter "accountName"

    .prologue
    .line 761
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 788
    :cond_0
    :goto_0
    return-void

    .line 764
    :cond_1
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 765
    .local v14, idList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v12

    .line 766
    .local v12, id:J
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const-string v5, "contact_id =?  AND (account_type = \'com.htc.android.pcsc\' OR account_type = \'com.anddroid.contacts.sim\') "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 771
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 772
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 773
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 775
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 778
    :cond_3
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 779
    .local v10, createCIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v14}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 780
    .local v15, rawContactId:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v2, v15, v0, v1}, Lcom/htc/util/contacts/BlacklistUtils;->copySingleRawContactAndWriteNote(Landroid/content/ContentResolver;ILjava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v9, v2

    .line 781
    .local v9, cid:I
    if-lez v9, :cond_4

    .line 782
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 786
    .end local v9           #cid:I
    .end local v15           #rawContactId:I
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v10, v2}, Lcom/htc/util/contacts/BlacklistUtils;->notifyUpdateBlacklist(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public static copySingleRawContactAndWriteNote(Landroid/content/ContentResolver;ILjava/lang/String;Ljava/lang/String;)J
    .locals 30
    .parameter "contentResolver"
    .parameter "rawContactId"
    .parameter "accountType"
    .parameter "accountName"

    .prologue
    .line 793
    const-wide/16 v24, -0x1

    .line 794
    .local v24, result_contact_id:J
    const/16 v17, -0x1

    .line 795
    .local v17, insertedRawContactOperationIdx:I
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 797
    .local v23, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v5, "_id=?"

    .line 798
    .local v5, selection:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    .line 799
    .local v6, selectionArgs:[Ljava/lang/String;
    sget-object v2, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "for_export_only"

    const-string v7, "1"

    invoke-virtual {v2, v4, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 800
    .local v3, uri:Landroid/net/Uri;
    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v11

    .line 803
    .local v11, entityIterator:Landroid/content/EntityIterator;
    if-nez v11, :cond_0

    .line 804
    const-string v2, "BlacklistUtils"

    const-string v4, "EntityIterator is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const-wide/16 v28, -0x1

    .line 904
    :goto_0
    return-wide v28

    .line 808
    :cond_0
    invoke-interface {v11}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 809
    const-string v2, "BlacklistUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Data does not exist. rawContactId: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    invoke-interface {v11}, Landroid/content/EntityIterator;->close()V

    .line 811
    const-wide/16 v28, -0x1

    goto :goto_0

    .line 814
    :cond_1
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v22

    .line 815
    .local v22, operation:Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "account_name"

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 816
    const-string v2, "account_type"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 817
    const-string v2, "send_to_voicemail"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 819
    add-int/lit8 v17, v17, 0x1

    .line 821
    invoke-virtual/range {v22 .. v22}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    const/4 v14, 0x0

    .line 824
    .local v14, haveUpdateNote:Z
    :cond_2
    invoke-interface {v11}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 825
    invoke-interface {v11}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/Entity;

    .line 827
    .local v10, entity:Landroid/content/Entity;
    invoke-virtual {v10}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_3
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/Entity$NamedContentValues;

    .line 828
    .local v19, namedContentValues:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v19

    iget-object v8, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 829
    .local v8, contentValues:Landroid/content/ContentValues;
    const-string v2, "mimetype"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 830
    .local v18, key:Ljava/lang/String;
    const-string v2, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 832
    const-string v2, "vnd.android.cursor.item/note"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 834
    const/4 v14, 0x1

    .line 835
    const-string v2, "data1"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 836
    .local v21, note:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/htc/util/contacts/BlacklistUtils$BlockCallNote;->addBlockNote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 838
    .local v20, newNote:Ljava/lang/String;
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v22

    .line 839
    const-string v2, "raw_contact_id"

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 840
    const-string v2, "mimetype"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 841
    const-string v2, "data1"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 842
    invoke-virtual/range {v22 .. v22}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 845
    .end local v20           #newNote:Ljava/lang/String;
    .end local v21           #note:Ljava/lang/String;
    :cond_4
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v22

    .line 846
    const-string v2, "raw_contact_id"

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 847
    const-string v2, "mimetype"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 849
    invoke-virtual {v8}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v27

    .line 850
    .local v27, valueset:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 851
    .local v12, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 852
    .local v13, entrykey:Ljava/lang/String;
    const-string v2, "data_sync1"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "data_sync2"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "data_sync3"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "data_sync4"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "raw_contact_id"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "_id"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 860
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 864
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_2

    .line 866
    .end local v12           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v13           #entrykey:Ljava/lang/String;
    :cond_6
    invoke-virtual/range {v22 .. v22}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 871
    .end local v8           #contentValues:Landroid/content/ContentValues;
    .end local v10           #entity:Landroid/content/Entity;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v18           #key:Ljava/lang/String;
    .end local v19           #namedContentValues:Landroid/content/Entity$NamedContentValues;
    .end local v27           #valueset:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_7
    invoke-interface {v11}, Landroid/content/EntityIterator;->close()V

    .line 874
    if-nez v14, :cond_8

    .line 875
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v22

    .line 876
    const-string v2, "raw_contact_id"

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 877
    const-string v2, "mimetype"

    const-string v4, "vnd.android.cursor.item/note"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 878
    const-string v2, "data1"

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/htc/util/contacts/BlacklistUtils$BlockCallNote;->addBlockNote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 879
    invoke-virtual/range {v22 .. v22}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 883
    :cond_8
    :try_start_0
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 884
    const-string v2, "com.android.contacts"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v26

    .line 885
    .local v26, results:[Landroid/content/ContentProviderResult;
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 887
    if-eqz v26, :cond_9

    move-object/from16 v0, v26

    array-length v2, v0

    if-lez v2, :cond_9

    aget-object v2, v26, v17
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v2, :cond_9

    .line 889
    :try_start_1
    aget-object v2, v26, v17

    iget-object v2, v2, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-wide v24

    .end local v26           #results:[Landroid/content/ContentProviderResult;
    :cond_9
    :goto_3
    move-wide/from16 v28, v24

    .line 904
    goto/16 :goto_0

    .line 890
    .restart local v26       #results:[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v9

    .line 891
    .local v9, e:Ljava/lang/NumberFormatException;
    :try_start_2
    const-string v2, "BlacklistUtils"

    const-string v4, "NumberFormatException occurred."

    invoke-static {v2, v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 896
    .end local v9           #e:Ljava/lang/NumberFormatException;
    .end local v26           #results:[Landroid/content/ContentProviderResult;
    :catch_1
    move-exception v9

    .line 897
    .local v9, e:Landroid/os/RemoteException;
    const-string v2, "BlacklistUtils"

    const-string v4, "%s: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v28, 0x0

    invoke-virtual {v9}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v7, v28

    const/16 v28, 0x1

    invoke-virtual {v9}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v7, v28

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const-wide/16 v28, -0x1

    goto/16 :goto_0

    .line 899
    .end local v9           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v9

    .line 900
    .local v9, e:Landroid/content/OperationApplicationException;
    const-string v2, "BlacklistUtils"

    const-string v4, "%s: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v28, 0x0

    invoke-virtual {v9}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v7, v28

    const/16 v28, 0x1

    invoke-virtual {v9}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v7, v28

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    const-wide/16 v28, -0x1

    goto/16 :goto_0
.end method

.method public static couldAddToBlockCaller(II)Z
    .locals 1
    .parameter "vip"
    .parameter "sendToVoicemail"

    .prologue
    .line 359
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    sget-boolean v0, Lcom/htc/provider/HtcContactsContract;->enableManageCalls:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/htc/provider/HtcContactsContract$BALCKLIST;->enableBlacklist:Z

    if-eqz v0, :cond_1

    .line 362
    :cond_0
    const/4 v0, 0x1

    .line 365
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static couldAddToBlockCaller(IIZ)Z
    .locals 2
    .parameter "vip"
    .parameter "sendToVoicemail"
    .parameter "isSIMSDN"

    .prologue
    const/4 v0, 0x0

    .line 368
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isSIMSDNEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 377
    :cond_0
    :goto_0
    return v0

    .line 371
    :cond_1
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    sget-boolean v1, Lcom/htc/provider/HtcContactsContract;->enableManageCalls:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/htc/provider/HtcContactsContract$BALCKLIST;->enableBlacklist:Z

    if-eqz v1, :cond_0

    .line 374
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "phoneNumber"

    .prologue
    .line 482
    if-nez p0, :cond_0

    .line 483
    const/4 v4, 0x0

    .line 496
    :goto_0
    return-object v4

    .line 486
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 487
    .local v3, length:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 489
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 490
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 492
    .local v1, character:C
    const-string v4, " ()-./"

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 493
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 489
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 496
    .end local v1           #character:C
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static modifySendToVoiceMail(Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 6
    .parameter "context"
    .parameter "contact_uri"
    .parameter "block"

    .prologue
    .line 93
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 94
    .local v0, contact_id:J
    if-eqz p0, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    .line 95
    :cond_0
    const-string v4, "BlacklistUtils"

    const-string v5, "incorrect parameter at modifySendToVoiceMail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :goto_0
    return-void

    .line 99
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v3, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 101
    .local v2, operation:Landroid/content/ContentProviderOperation$Builder;
    const-string v5, "send_to_voicemail"

    if-eqz p2, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 102
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    long-to-int v4, v0

    int-to-long v4, v4

    invoke-static {p0, v4, v5, p2, v3}, Lcom/htc/util/contacts/BlacklistUtils$BlockCallNote;->updateNoteForSyncContacts(Landroid/content/Context;JZLjava/util/ArrayList;)V

    goto :goto_0

    .line 101
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static modifySendToVoiceMailAndNotify(Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 4
    .parameter "context"
    .parameter "contact_uri"
    .parameter "block"

    .prologue
    .line 83
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 84
    .local v0, contact_id:J
    if-eqz p0, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 85
    :cond_0
    const-string v2, "BlacklistUtils"

    const-string v3, "incorrect parameter at modifySendToVoiceMailAndNotify"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/htc/util/contacts/BlacklistUtils;->modifySendToVoiceMail(Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 89
    long-to-int v2, v0

    invoke-static {p0, v2}, Lcom/htc/util/contacts/BlacklistUtils;->notifyUpdateBlackList(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public static modifySendToVoiceMailForSim(Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 7
    .parameter "context"
    .parameter "contact_uri"
    .parameter "block"

    .prologue
    const/4 v6, 0x0

    .line 206
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 207
    .local v1, contact_id:J
    if-eqz p0, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gez v4, :cond_1

    .line 208
    :cond_0
    const-string v4, "BlacklistUtils"

    const-string v5, "incorrect parameter at modifySendToVoiceMailForSim"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :goto_0
    return-void

    .line 212
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 213
    .local v3, values:Landroid/content/ContentValues;
    const-string v5, "send_to_voicemail"

    if-eqz p2, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 214
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1, v3, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 217
    sget-object v4, Lcom/htc/provider/HtcContactsContract$BLOCKED_SIM;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 218
    .local v0, blockSimUri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 220
    if-eqz p2, :cond_3

    .line 221
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 213
    .end local v0           #blockSimUri:Landroid/net/Uri;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 223
    .restart local v0       #blockSimUri:Landroid/net/Uri;
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v0, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static modifySendToVoiceMailForSim(Landroid/content/Context;Landroid/net/Uri;ZZ)V
    .locals 8
    .parameter "context"
    .parameter "contact_uri"
    .parameter "block"
    .parameter "isRuim"

    .prologue
    const/4 v7, 0x0

    .line 120
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 121
    .local v2, contact_id:J
    if-eqz p0, :cond_0

    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gez v5, :cond_1

    .line 122
    :cond_0
    const-string v5, "BlacklistUtils"

    const-string v6, "incorrect parameter at modifySendToVoiceMailForSim"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_0
    return-void

    .line 126
    :cond_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 127
    .local v4, values:Landroid/content/ContentValues;
    const-string v6, "send_to_voicemail"

    if-eqz p2, :cond_2

    const/4 v5, 0x1

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1, v4, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 131
    sget-object v5, Lcom/htc/provider/HtcContactsContract$BLOCKED_SIM;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 132
    .local v0, blockSimUri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 133
    .local v1, builder:Landroid/net/Uri$Builder;
    const-string v6, "RUIM"

    if-eqz p3, :cond_3

    const-string v5, "block_ruim"

    :goto_2
    invoke-virtual {v1, v6, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 134
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 135
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 137
    if-eqz p2, :cond_4

    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 127
    .end local v0           #blockSimUri:Landroid/net/Uri;
    .end local v1           #builder:Landroid/net/Uri$Builder;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 133
    .restart local v0       #blockSimUri:Landroid/net/Uri;
    .restart local v1       #builder:Landroid/net/Uri$Builder;
    :cond_3
    const-string v5, "block_sim"

    goto :goto_2

    .line 140
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v0, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static modifySendToVoiceMailForSimAndNotify(Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 4
    .parameter "context"
    .parameter "contact_uri"
    .parameter "block"

    .prologue
    .line 194
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 195
    .local v0, contact_id:J
    if-eqz p0, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 196
    :cond_0
    const-string v2, "BlacklistUtils"

    const-string v3, "incorrect parameter at modifySendToVoiceMailForSimAndNotify"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/htc/util/contacts/BlacklistUtils;->modifySendToVoiceMailForSim(Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 201
    long-to-int v2, v0

    invoke-static {p0, v2}, Lcom/htc/util/contacts/BlacklistUtils;->notifyUpdateBlackList(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public static modifySendToVoiceMailForSimAndNotify(Landroid/content/Context;Landroid/net/Uri;ZZ)V
    .locals 4
    .parameter "context"
    .parameter "contact_uri"
    .parameter "block"
    .parameter "isRuim"

    .prologue
    .line 108
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 109
    .local v0, contact_id:J
    if-eqz p0, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 110
    :cond_0
    const-string v2, "BlacklistUtils"

    const-string v3, "incorrect parameter at modifySendToVoiceMailForSimAndNotify"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/htc/util/contacts/BlacklistUtils;->modifySendToVoiceMailForSim(Landroid/content/Context;Landroid/net/Uri;ZZ)V

    .line 115
    long-to-int v2, v0

    invoke-static {p0, v2}, Lcom/htc/util/contacts/BlacklistUtils;->notifyUpdateBlackList(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public static modifySendToVoiceMailForSimType(Landroid/content/Context;Landroid/net/Uri;ZLjava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "contact_uri"
    .parameter "block"
    .parameter "accountType"

    .prologue
    const/4 v8, 0x0

    .line 157
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 158
    .local v2, contact_id:J
    if-eqz p0, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_1

    .line 159
    :cond_0
    const-string v6, "BlacklistUtils"

    const-string v7, "incorrect parameter at modifySendToVoiceMailForSimType"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :goto_0
    return-void

    .line 163
    :cond_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 164
    .local v5, values:Landroid/content/ContentValues;
    const-string v7, "send_to_voicemail"

    if-eqz p2, :cond_3

    const/4 v6, 0x1

    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p1, v5, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 167
    const-string v4, "block_sim"

    .line 168
    .local v4, param:Ljava/lang/String;
    if-eqz p3, :cond_2

    .line 169
    const-string v6, "com.anddroid.contacts.sim"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 170
    const-string v4, "block_sim"

    .line 178
    :cond_2
    :goto_2
    sget-object v6, Lcom/htc/provider/HtcContactsContract$BLOCKED_SIM;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 179
    .local v0, blockSimUri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 180
    .local v1, builder:Landroid/net/Uri$Builder;
    const-string v6, "PRRAM_BLOCKED_TYPE"

    invoke-virtual {v1, v6, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 181
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 182
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 184
    if-eqz p2, :cond_6

    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v0, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 164
    .end local v0           #blockSimUri:Landroid/net/Uri;
    .end local v1           #builder:Landroid/net/Uri$Builder;
    .end local v4           #param:Ljava/lang/String;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 171
    .restart local v4       #param:Ljava/lang/String;
    :cond_4
    const-string v6, "com.android.contacts.ruim"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 172
    const-string v4, "block_ruim"

    goto :goto_2

    .line 173
    :cond_5
    const-string v6, "com.android.contacts.subsim"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 174
    const-string v4, "block_subsim"

    goto :goto_2

    .line 187
    .restart local v0       #blockSimUri:Landroid/net/Uri;
    .restart local v1       #builder:Landroid/net/Uri$Builder;
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v0, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static modifySendToVoiceMailForSimTypeAndNotify(Landroid/content/Context;Landroid/net/Uri;ZLjava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "contact_uri"
    .parameter "block"
    .parameter "accountType"

    .prologue
    .line 146
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 147
    .local v0, contact_id:J
    if-eqz p0, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 148
    :cond_0
    const-string v2, "BlacklistUtils"

    const-string v3, "incorrect parameter at modifySendToVoiceMailForSimTypeAndNotify"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/htc/util/contacts/BlacklistUtils;->modifySendToVoiceMailForSimType(Landroid/content/Context;Landroid/net/Uri;ZLjava/lang/String;)V

    .line 152
    long-to-int v2, v0

    invoke-static {p0, v2}, Lcom/htc/util/contacts/BlacklistUtils;->notifyUpdateBlackList(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public static modifyVIP(Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 4
    .parameter "context"
    .parameter "contact_uri"
    .parameter "vip"

    .prologue
    const/4 v3, 0x0

    .line 330
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 331
    .local v0, values:Landroid/content/ContentValues;
    const-string v2, "vip"

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 332
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 333
    return-void

    .line 331
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static modifyVIPForSim(Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 8
    .parameter "context"
    .parameter "contact_uri"
    .parameter "vip"

    .prologue
    const/4 v7, 0x0

    .line 336
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 337
    .local v1, contact_id:J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-gez v5, :cond_0

    .line 356
    :goto_0
    return-void

    .line 340
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 341
    .local v3, values:Landroid/content/ContentValues;
    const-string v6, "vip"

    if-eqz p2, :cond_1

    const/4 v5, 0x1

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 342
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1, v3, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 345
    sget-object v5, Lcom/htc/provider/HtcContactsContract$VIP_SIM;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 346
    .local v4, vipSimUri:Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 347
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v5, "RUIM"

    const-string v6, "block_sim"

    invoke-virtual {v0, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 348
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 350
    if-eqz p2, :cond_2

    .line 351
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 341
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v4           #vipSimUri:Landroid/net/Uri;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 353
    .restart local v0       #builder:Landroid/net/Uri$Builder;
    .restart local v4       #vipSimUri:Landroid/net/Uri;
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static notifyUpdateBlackList(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "id"

    .prologue
    .line 501
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isMMSBlockedEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    if-lez p1, :cond_0

    .line 502
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 503
    .local v0, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/BlacklistUtils;->notifyUpdateBlacklist(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 506
    .end local v0           #idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    return-void
.end method

.method public static notifyUpdateBlackList(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "number"

    .prologue
    .line 520
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isMMSBlockedEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 521
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 522
    .local v0, numList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/htc/util/contacts/BlacklistUtils;->notifyUpdateBlacklist(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 525
    .end local v0           #numList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public static notifyUpdateBlacklist(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 510
    .local p1, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, numberList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isMMSBlockedEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    .line 511
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.contacts.actions.BLACK_LIST_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 512
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "block_id_list"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 513
    const-string v1, "block_number_list"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 514
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 516
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static removeBlackNumber(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "number"

    .prologue
    .line 317
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 318
    :cond_0
    const-string v2, "BlacklistUtils"

    const-string v3, "incorrect parameter at removeBlackNumber"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :goto_0
    return-void

    .line 322
    :cond_1
    sget-object v0, Lcom/htc/provider/HtcContactsContract$BLOCKED_NUMBER;->CONTENT_URI:Landroid/net/Uri;

    .line 323
    .local v0, BLACK_NUMBER_URI:Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 324
    .local v1, whereArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "number = ?"

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static removeBlackNumberAndNotify(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "number"

    .prologue
    .line 307
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    :cond_0
    const-string v0, "BlacklistUtils"

    const-string v1, "incorrect parameter at removeBlackNumberAndNotify"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :goto_0
    return-void

    .line 312
    :cond_1
    invoke-static {p0, p1}, Lcom/htc/util/contacts/BlacklistUtils;->removeBlackNumber(Landroid/content/Context;Ljava/lang/String;)V

    .line 313
    invoke-static {p0, p1}, Lcom/htc/util/contacts/BlacklistUtils;->notifyUpdateBlackList(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

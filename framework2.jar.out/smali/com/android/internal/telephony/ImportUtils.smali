.class public Lcom/android/internal/telephony/ImportUtils;
.super Ljava/lang/Object;
.source "ImportUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ImportUtils$NamePhoneTypePair;
    }
.end annotation


# static fields
.field private static final ACCOUNT_TYPE_GOOGLE:Ljava/lang/String; = "com.google.GAIA"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final GOOGLE_MY_CONTACTS_GROUP:Ljava/lang/String; = "System Group: My Contacts"

.field static final PB_BOOK_COLUMN_NAMES:[Ljava/lang/String; = null

.field private static final QUERY_RAW_ID_BY_RECORD_NUMBER:Ljava/lang/String; = "account_name=\'SIM\' AND account_type=\'com.anddroid.contacts.sim\' AND sourceid=? AND deleted=0"

.field private static final QUERY_RAW_ID_SELECTION:[Ljava/lang/String; = null

.field private static final QUERY_RUIM_RAW_ID_BY_RECORD_NUMBER:Ljava/lang/String; = "account_name=\'RUIM\' AND account_type=\'com.android.contacts.ruim\' AND sourceid=? AND deleted=0"

.field private static final QUERY_SUBSIM_RAW_ID_BY_RECORD_NUMBER:Ljava/lang/String; = "account_name=\'SUBSIM\' AND account_type=\'com.android.contacts.subsim\' AND sourceid=? AND deleted=0"

.field private static final SDEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ImportUtils"

.field private static final sEmptyContentValues:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/telephony/ImportUtils;->DEBUG:Z

    .line 67
    sget-object v0, Lcom/android/internal/telephony/IccContract$IccPhonebook;->COLUMN_NAMES:[Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/ImportUtils;->PB_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    .line 69
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/ImportUtils;->sEmptyContentValues:Landroid/content/ContentValues;

    .line 107
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/ImportUtils;->QUERY_RAW_ID_SELECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method public static applyImportOneOperation(Ljava/util/ArrayList;Landroid/database/Cursor;Ljava/lang/String;Landroid/accounts/Account;I)I
    .locals 4
    .parameter
    .parameter "cursor"
    .parameter "groupIdString"
    .parameter "account"
    .parameter "initRawContact"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/database/Cursor;",
            "Ljava/lang/String;",
            "Landroid/accounts/Account;",
            "I)I"
        }
    .end annotation

    .prologue
    .line 256
    .local p0, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-nez p0, :cond_0

    .line 276
    .end local p4
    :goto_0
    return p4

    .line 259
    .restart local p4
    :cond_0
    move v2, p4

    .line 261
    .local v2, insertRawContact:I
    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v3, p0}, Lcom/android/internal/telephony/ImportUtils;->createInserContactOperationBuilder(Landroid/accounts/Account;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 267
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    add-int/lit8 v2, v2, 0x1

    .line 270
    const/4 v3, 0x1

    invoke-static {p0, p1, v2, p2, v3}, Lcom/android/internal/telephony/ImportUtils;->insertDataIntoOperation(Ljava/util/ArrayList;Landroid/database/Cursor;ILjava/lang/String;Z)I

    move-result v1

    .line 276
    .local v1, insertCount:I
    add-int p4, v2, v1

    goto :goto_0
.end method

.method private static createInserContactOperationBuilder(Landroid/accounts/Account;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/ContentProviderOperation$Builder;
    .locals 5
    .parameter "account"
    .parameter "recordNumber"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)",
            "Landroid/content/ContentProviderOperation$Builder;"
        }
    .end annotation

    .prologue
    .local p2, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 392
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 395
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    if-eqz p0, :cond_0

    .line 396
    const-string v1, "account_name"

    iget-object v2, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 397
    const-string v1, "account_type"

    iget-object v2, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 398
    const-string v1, "sourceid"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 399
    const-string v1, "version"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 400
    const-string v1, "dirty"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 401
    const-string v1, "deleted"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 402
    const-string v1, "aggregation_mode"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 404
    const-string v1, "sync1"

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 405
    const-string v1, "sync2"

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 406
    const-string v1, "sync3"

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 407
    const-string v1, "sync4"

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 411
    :goto_0
    return-object v0

    .line 409
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/ImportUtils;->sEmptyContentValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0
.end method

.method static deleteSimContactData(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 5
    .parameter "resolver"
    .parameter "recordNumber"

    .prologue
    .line 523
    const/4 v0, 0x0

    .line 524
    .local v0, rawId:I
    if-eqz p0, :cond_0

    .line 525
    invoke-static {p0, p1}, Lcom/android/internal/telephony/ImportUtils;->getSimRawContact(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 526
    if-lez v0, :cond_0

    .line 527
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 528
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "raw_contact_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 531
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 537
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :cond_0
    return v0
.end method

.method static deleteSimContactDataExt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 5
    .parameter "resolver"
    .parameter "recordNumber"
    .parameter "phoneType"

    .prologue
    .line 545
    const/4 v0, 0x0

    .line 546
    .local v0, rawId:I
    if-eqz p0, :cond_0

    .line 547
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/ImportUtils;->getSimRawContactExt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 548
    if-lez v0, :cond_0

    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 550
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "raw_contact_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 553
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 559
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :cond_0
    return v0
.end method

.method static generateSimCursorToUpdate(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .parameter "name"
    .parameter "number"
    .parameter "hidden"
    .parameter "recordNumber"
    .parameter "number1"
    .parameter "number2"
    .parameter "emails"

    .prologue
    .line 667
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 668
    .local v0, contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    if-eqz p2, :cond_0

    .line 672
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    :goto_0
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    invoke-virtual {v0, p7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/android/internal/telephony/ImportUtils;->PB_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 682
    .local v1, matrix:Landroid/database/MatrixCursor;
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 684
    return-object v1

    .line 674
    .end local v1           #matrix:Landroid/database/MatrixCursor;
    :cond_0
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getGoogleGroupIdString(Landroid/accounts/Account;Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 8
    .parameter "account"
    .parameter "resolver"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 497
    const/4 v6, 0x0

    .line 498
    .local v6, groupString:Ljava/lang/String;
    const-string v0, "com.google.GAIA"

    iget-object v1, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "sourceid"

    aput-object v0, v2, v5

    const-string v3, "title=?"

    new-array v4, v4, [Ljava/lang/String;

    const-string v0, "System Group: My Contacts"

    aput-object v0, v4, v5

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 506
    .local v7, tmpCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 510
    :cond_0
    if-eqz v7, :cond_1

    .line 511
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 517
    .end local v7           #tmpCursor:Landroid/database/Cursor;
    :cond_1
    return-object v6

    .line 510
    .restart local v7       #tmpCursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 511
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 510
    :cond_2
    throw v0
.end method

.method private static getInsertSimContactEmailOperationBuidler(ILjava/lang/String;Z)Landroid/content/ContentProviderOperation$Builder;
    .locals 3
    .parameter "insertRawContact"
    .parameter "emailAddress"
    .parameter "backReference"

    .prologue
    .line 461
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 463
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    if-eqz p2, :cond_0

    .line 464
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 468
    :goto_0
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 469
    const-string v1, "data2"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 470
    const-string v1, "data1"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 472
    return-object v0

    .line 466
    :cond_0
    const-string v1, "raw_contact_id"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0
.end method

.method private static getInsertSimContactGroupOperationBuilder(ILjava/lang/String;Z)Landroid/content/ContentProviderOperation$Builder;
    .locals 3
    .parameter "insertRawContact"
    .parameter "groupIdString"
    .parameter "backReference"

    .prologue
    .line 480
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 482
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    if-eqz p2, :cond_0

    .line 483
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 487
    :goto_0
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 488
    const-string v1, "group_sourceid"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 490
    return-object v0

    .line 485
    :cond_0
    const-string v1, "raw_contact_id"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0
.end method

.method private static getInsertSimContactNameOperationBuilder(ILjava/lang/String;Ljava/util/ArrayList;Z)Landroid/content/ContentProviderOperation$Builder;
    .locals 3
    .parameter "insertRawContact"
    .parameter "name"
    .parameter
    .parameter "backReference"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;Z)",
            "Landroid/content/ContentProviderOperation$Builder;"
        }
    .end annotation

    .prologue
    .line 420
    .local p2, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 422
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    if-eqz p3, :cond_0

    .line 423
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 427
    :goto_0
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 428
    const-string v1, "data2"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 429
    return-object v0

    .line 425
    :cond_0
    const-string v1, "raw_contact_id"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0
.end method

.method private static getInsertSimContactPhoneOperationBuilder(IILjava/lang/String;ILjava/util/ArrayList;Z)Landroid/content/ContentProviderOperation$Builder;
    .locals 3
    .parameter "insertRawContact"
    .parameter "phoneType"
    .parameter "phoneNumber"
    .parameter "simLocation"
    .parameter
    .parameter "backReference"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;Z)",
            "Landroid/content/ContentProviderOperation$Builder;"
        }
    .end annotation

    .prologue
    .line 440
    .local p4, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 442
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    if-eqz p5, :cond_0

    .line 443
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 447
    :goto_0
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 448
    const-string v1, "data2"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 449
    const-string v1, "data1"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 450
    const-string v1, "data9"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 451
    const-string v1, "is_primary"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 453
    return-object v0

    .line 445
    :cond_0
    const-string v1, "raw_contact_id"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0
.end method

.method private static getSimContactCursorByRecordNumber(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "resolver"
    .parameter "recordNumber"

    .prologue
    const/4 v5, 0x0

    .line 567
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 575
    :cond_0
    :goto_0
    return-object v5

    .line 572
    :cond_1
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 575
    .local v4, args:[Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/telephony/ImportUtils;->QUERY_RAW_ID_SELECTION:[Ljava/lang/String;

    const-string v3, "account_name=\'SIM\' AND account_type=\'com.anddroid.contacts.sim\' AND sourceid=? AND deleted=0"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_0
.end method

.method private static getSimContactCursorByRecordNumberExt(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 7
    .parameter "resolver"
    .parameter "recordNumber"
    .parameter "phoneType"

    .prologue
    const/4 v5, 0x0

    .line 584
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v6, v5

    .line 608
    :goto_0
    return-object v6

    .line 589
    :cond_1
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 593
    .local v4, args:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 594
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 596
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/telephony/ImportUtils;->QUERY_RAW_ID_SELECTION:[Ljava/lang/String;

    const-string v3, "account_name=\'RUIM\' AND account_type=\'com.android.contacts.ruim\' AND sourceid=? AND deleted=0"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0

    .line 599
    :cond_2
    const/4 v0, 0x5

    if-ne p2, v0, :cond_3

    .line 600
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/telephony/ImportUtils;->QUERY_RAW_ID_SELECTION:[Ljava/lang/String;

    const-string v3, "account_name=\'SUBSIM\' AND account_type=\'com.android.contacts.subsim\' AND sourceid=? AND deleted=0"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0

    .line 605
    :cond_3
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/telephony/ImportUtils;->QUERY_RAW_ID_SELECTION:[Ljava/lang/String;

    const-string v3, "account_name=\'SIM\' AND account_type=\'com.anddroid.contacts.sim\' AND sourceid=? AND deleted=0"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0
.end method

.method private static getSimRawContact(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 3
    .parameter "resolver"
    .parameter "recordNumber"

    .prologue
    .line 615
    const/4 v0, -0x1

    .line 616
    .local v0, rawId:I
    invoke-static {p0, p1}, Lcom/android/internal/telephony/ImportUtils;->getSimContactCursorByRecordNumber(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 618
    .local v1, simCursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 619
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 620
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 625
    :cond_0
    if-eqz v1, :cond_1

    .line 626
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 630
    :cond_1
    return v0

    .line 625
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 626
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 625
    :cond_2
    throw v2
.end method

.method private static getSimRawContactExt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 3
    .parameter "resolver"
    .parameter "recordNumber"
    .parameter "phoneType"

    .prologue
    .line 636
    const/4 v0, -0x1

    .line 638
    .local v0, rawId:I
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/ImportUtils;->getSimContactCursorByRecordNumberExt(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v1

    .line 641
    .local v1, simCursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 642
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 643
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 648
    :cond_0
    if-eqz v1, :cond_1

    .line 649
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 653
    :cond_1
    return v0

    .line 648
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 649
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 648
    :cond_2
    throw v2
.end method

.method public static importSimIntoContactDb(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)I
    .locals 8
    .parameter "simCursor"
    .parameter "resolver"
    .parameter "account"

    .prologue
    .line 200
    if-nez p0, :cond_0

    const/4 v5, 0x0

    .line 202
    .local v5, size:I
    :goto_0
    const/4 v4, -0x1

    .line 206
    .local v4, insertRawContact:I
    if-lez v5, :cond_2

    .line 209
    :try_start_0
    invoke-static {p2, p1}, Lcom/android/internal/telephony/ImportUtils;->getGoogleGroupIdString(Landroid/accounts/Account;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, groupIdString:Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v0, batchOperations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v6, -0x1

    invoke-interface {p0, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 214
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 215
    invoke-static {v0, p0, v3, p2, v4}, Lcom/android/internal/telephony/ImportUtils;->applyImportOneOperation(Ljava/util/ArrayList;Landroid/database/Cursor;Ljava/lang/String;Landroid/accounts/Account;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    goto :goto_1

    .line 200
    .end local v0           #batchOperations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v3           #groupIdString:Ljava/lang/String;
    .end local v4           #insertRawContact:I
    .end local v5           #size:I
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    goto :goto_0

    .line 222
    .restart local v0       #batchOperations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v3       #groupIdString:Ljava/lang/String;
    .restart local v4       #insertRawContact:I
    .restart local v5       #size:I
    :cond_1
    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 223
    const-string v6, "com.android.contacts"

    invoke-virtual {p1, v6, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 236
    .end local v0           #batchOperations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v3           #groupIdString:Ljava/lang/String;
    :cond_2
    :goto_2
    return v4

    .line 228
    :catch_0
    move-exception v1

    .line 229
    .local v1, e1:Landroid/content/OperationApplicationException;
    :try_start_2
    const-string v6, "ImportUtils"

    const-string v7, "ImportAllSimContactsThread:run"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 232
    .end local v1           #e1:Landroid/content/OperationApplicationException;
    :catchall_0
    move-exception v6

    throw v6

    .line 230
    :catch_1
    move-exception v2

    .line 231
    .local v2, e2:Landroid/os/RemoteException;
    :try_start_3
    const-string v6, "ImportUtils"

    const-string v7, "ImportAllSimContactsThread:run"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method private static insertDataIntoOperation(Ljava/util/ArrayList;Landroid/database/Cursor;ILjava/lang/String;Z)I
    .locals 26
    .parameter
    .parameter "cursor"
    .parameter "insertRawContact"
    .parameter "groupIdString"
    .parameter "backReference"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/database/Cursor;",
            "I",
            "Ljava/lang/String;",
            "Z)I"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v22, 0x0

    .line 304
    .local v22, insertCount:I
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 306
    .local v24, name:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 307
    move/from16 v0, p2

    move-object/from16 v1, v24

    move-object/from16 v2, p0

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/ImportUtils;->getInsertSimContactNameOperationBuilder(ILjava/lang/String;Ljava/util/ArrayList;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    .line 311
    .local v17, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    add-int/lit8 v22, v22, 0x1

    .line 315
    .end local v17           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_0
    const/16 v25, 0x2

    .line 316
    .local v25, phoneType:I
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 317
    .local v6, phoneNumber:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 318
    const/4 v5, 0x2

    const/4 v7, 0x1

    move/from16 v4, p2

    move-object/from16 v8, p0

    move/from16 v9, p4

    invoke-static/range {v4 .. v9}, Lcom/android/internal/telephony/ImportUtils;->getInsertSimContactPhoneOperationBuilder(IILjava/lang/String;ILjava/util/ArrayList;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    .line 324
    .restart local v17       #builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    add-int/lit8 v22, v22, 0x1

    .line 329
    .end local v17           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_1
    const/4 v4, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 330
    .local v9, adNumber1:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 331
    const/4 v8, 0x2

    const/4 v10, 0x2

    move/from16 v7, p2

    move-object/from16 v11, p0

    move/from16 v12, p4

    invoke-static/range {v7 .. v12}, Lcom/android/internal/telephony/ImportUtils;->getInsertSimContactPhoneOperationBuilder(IILjava/lang/String;ILjava/util/ArrayList;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    .line 337
    .restart local v17       #builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    add-int/lit8 v22, v22, 0x1

    .line 342
    .end local v17           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_2
    const/4 v4, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 343
    .local v12, adNumber2:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 344
    const/4 v11, 0x2

    const/4 v13, 0x3

    move/from16 v10, p2

    move-object/from16 v14, p0

    move/from16 v15, p4

    invoke-static/range {v10 .. v15}, Lcom/android/internal/telephony/ImportUtils;->getInsertSimContactPhoneOperationBuilder(IILjava/lang/String;ILjava/util/ArrayList;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    .line 350
    .restart local v17       #builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    add-int/lit8 v22, v22, 0x1

    .line 354
    .end local v17           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_3
    const/4 v4, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 357
    .local v20, emailAddresses:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 358
    const-string v4, ","

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 363
    .local v19, emailAddressArray:[Ljava/lang/String;
    :goto_0
    if-eqz v19, :cond_6

    .line 364
    move-object/from16 v16, v19

    .local v16, arr$:[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    .local v23, len$:I
    const/16 v21, 0x0

    .local v21, i$:I
    :goto_1
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_6

    aget-object v18, v16, v21

    .line 365
    .local v18, emailAddress:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 366
    move/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ImportUtils;->getInsertSimContactEmailOperationBuidler(ILjava/lang/String;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    .line 370
    .restart local v17       #builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    add-int/lit8 v22, v22, 0x1

    .line 364
    .end local v17           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_4
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 360
    .end local v16           #arr$:[Ljava/lang/String;
    .end local v18           #emailAddress:Ljava/lang/String;
    .end local v19           #emailAddressArray:[Ljava/lang/String;
    .end local v21           #i$:I
    .end local v23           #len$:I
    :cond_5
    const/16 v19, 0x0

    .restart local v19       #emailAddressArray:[Ljava/lang/String;
    goto :goto_0

    .line 376
    :cond_6
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 377
    invoke-static/range {p2 .. p4}, Lcom/android/internal/telephony/ImportUtils;->getInsertSimContactGroupOperationBuilder(ILjava/lang/String;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    .line 380
    .restart local v17       #builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    add-int/lit8 v22, v22, 0x1

    .line 384
    .end local v17           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_7
    return v22
.end method

.method static insertSimDataIntoContactDb(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;I)I
    .locals 9
    .parameter "simCursor"
    .parameter "resolver"
    .parameter "account"
    .parameter "rawContactId"

    .prologue
    const/4 v6, 0x0

    .line 152
    const/4 v4, 0x0

    .line 154
    .local v4, insertCount:I
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v5, v4

    .line 186
    .end local v4           #insertCount:I
    .local v5, insertCount:I
    :goto_0
    return v5

    .line 158
    .end local v5           #insertCount:I
    .restart local v4       #insertCount:I
    :cond_1
    if-nez p0, :cond_2

    .line 161
    .local v6, size:I
    :goto_1
    :try_start_0
    invoke-static {p2, p1}, Lcom/android/internal/telephony/ImportUtils;->getGoogleGroupIdString(Landroid/accounts/Account;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, groupIdString:Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v0, batchOperations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v7, -0x1

    invoke-interface {p0, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 166
    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 167
    const/4 v7, 0x0

    invoke-static {v0, p0, p3, v3, v7}, Lcom/android/internal/telephony/ImportUtils;->insertDataIntoOperation(Ljava/util/ArrayList;Landroid/database/Cursor;ILjava/lang/String;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    goto :goto_2

    .line 158
    .end local v0           #batchOperations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v3           #groupIdString:Ljava/lang/String;
    .end local v6           #size:I
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    goto :goto_1

    .line 174
    .restart local v0       #batchOperations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v3       #groupIdString:Ljava/lang/String;
    .restart local v6       #size:I
    :cond_3
    if-eqz v0, :cond_4

    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 175
    const-string v7, "com.android.contacts"

    invoke-virtual {p1, v7, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v0           #batchOperations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v3           #groupIdString:Ljava/lang/String;
    :cond_4
    :goto_3
    move v5, v4

    .line 186
    .end local v4           #insertCount:I
    .restart local v5       #insertCount:I
    goto :goto_0

    .line 180
    .end local v5           #insertCount:I
    .restart local v4       #insertCount:I
    :catch_0
    move-exception v1

    .line 181
    .local v1, e1:Landroid/content/OperationApplicationException;
    :try_start_2
    const-string v7, "ImportUtils"

    const-string v8, "ImportAllSimContactsThread:run"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 184
    .end local v1           #e1:Landroid/content/OperationApplicationException;
    :catchall_0
    move-exception v7

    throw v7

    .line 182
    :catch_1
    move-exception v2

    .line 183
    .local v2, e2:Landroid/os/RemoteException;
    :try_start_3
    const-string v7, "ImportUtils"

    const-string v8, "ImportAllSimContactsThread:run"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3
.end method

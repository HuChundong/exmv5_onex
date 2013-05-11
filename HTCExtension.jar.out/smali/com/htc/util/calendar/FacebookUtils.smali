.class public Lcom/htc/util/calendar/FacebookUtils;
.super Ljava/lang/Object;
.source "FacebookUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/calendar/FacebookUtils$FBContacts;
    }
.end annotation


# static fields
.field public static final LINKED_ACCOUNT_TYPE:Ljava/lang/String; = "linked_account_type"

.field private static final TAG:Ljava/lang/String; = "FacebookUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 121
    return-void
.end method

.method public static final getContactsBySourceId(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/util/calendar/FacebookUtils$FBContacts;
    .locals 16
    .parameter "context"
    .parameter "uid"

    .prologue
    .line 37
    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 39
    .local v7, uri:Landroid/net/Uri;
    const-wide/16 v12, -0x1

    .line 40
    .local v12, raw_contact_id:J
    const-string v8, ""

    .line 41
    .local v8, account_type:Ljava/lang/String;
    const-string v10, ""

    .line 42
    .local v10, dataset:Ljava/lang/String;
    const/4 v9, 0x0

    .line 44
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v14, 0x4

    new-array v3, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "contact_id"

    aput-object v15, v3, v14

    const/4 v14, 0x1

    const-string v15, "data_set"

    aput-object v15, v3, v14

    const/4 v14, 0x2

    const-string v15, "account_type"

    aput-object v15, v3, v14

    const/4 v14, 0x3

    const-string v15, "lookup"

    aput-object v15, v3, v14

    const-string v4, "sourceid=?"

    const/4 v14, 0x1

    new-array v5, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object p1, v5, v14

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 49
    if-eqz v9, :cond_2

    .line 50
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    const-string v1, "contact_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    .line 52
    .end local v12           #raw_contact_id:J
    .local v5, raw_contact_id:J
    :try_start_1
    const-string v1, "data_set"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 53
    .end local v10           #dataset:Ljava/lang/String;
    .local v3, dataset:Ljava/lang/String;
    :try_start_2
    const-string v1, "lookup"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, lookup:Ljava/lang/String;
    const-string v1, "account_type"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    .line 55
    .end local v8           #account_type:Ljava/lang/String;
    .local v2, account_type:Ljava/lang/String;
    const-wide/16 v14, -0x1

    cmp-long v1, v5, v14

    if-eqz v1, :cond_0

    .line 56
    :try_start_3
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 60
    :cond_0
    new-instance v1, Lcom/htc/util/calendar/FacebookUtils$FBContacts;

    invoke-direct/range {v1 .. v7}, Lcom/htc/util/calendar/FacebookUtils$FBContacts;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 66
    if-eqz v9, :cond_1

    .line 67
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 70
    .end local v4           #lookup:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1

    .line 66
    .end local v2           #account_type:Ljava/lang/String;
    .end local v3           #dataset:Ljava/lang/String;
    .end local v5           #raw_contact_id:J
    .restart local v8       #account_type:Ljava/lang/String;
    .restart local v10       #dataset:Ljava/lang/String;
    .restart local v12       #raw_contact_id:J
    :cond_2
    if-eqz v9, :cond_5

    .line 67
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v3, v10

    .end local v10           #dataset:Ljava/lang/String;
    .restart local v3       #dataset:Ljava/lang/String;
    move-object v2, v8

    .end local v8           #account_type:Ljava/lang/String;
    .restart local v2       #account_type:Ljava/lang/String;
    move-wide v5, v12

    .line 70
    .end local v12           #raw_contact_id:J
    .restart local v5       #raw_contact_id:J
    :cond_3
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 63
    .end local v2           #account_type:Ljava/lang/String;
    .end local v3           #dataset:Ljava/lang/String;
    .end local v5           #raw_contact_id:J
    .restart local v8       #account_type:Ljava/lang/String;
    .restart local v10       #dataset:Ljava/lang/String;
    .restart local v12       #raw_contact_id:J
    :catch_0
    move-exception v11

    move-object v3, v10

    .end local v10           #dataset:Ljava/lang/String;
    .restart local v3       #dataset:Ljava/lang/String;
    move-object v2, v8

    .end local v8           #account_type:Ljava/lang/String;
    .restart local v2       #account_type:Ljava/lang/String;
    move-wide v5, v12

    .line 64
    .end local v12           #raw_contact_id:J
    .restart local v5       #raw_contact_id:J
    .local v11, e:Ljava/lang/Exception;
    :goto_2
    :try_start_4
    const-string v1, "FacebookUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getContactsBySourceId failed! uid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 66
    if-eqz v9, :cond_3

    .line 67
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 66
    .end local v2           #account_type:Ljava/lang/String;
    .end local v3           #dataset:Ljava/lang/String;
    .end local v5           #raw_contact_id:J
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v8       #account_type:Ljava/lang/String;
    .restart local v10       #dataset:Ljava/lang/String;
    .restart local v12       #raw_contact_id:J
    :catchall_0
    move-exception v1

    move-object v3, v10

    .end local v10           #dataset:Ljava/lang/String;
    .restart local v3       #dataset:Ljava/lang/String;
    move-object v2, v8

    .end local v8           #account_type:Ljava/lang/String;
    .restart local v2       #account_type:Ljava/lang/String;
    move-wide v5, v12

    .end local v12           #raw_contact_id:J
    .restart local v5       #raw_contact_id:J
    :goto_3
    if-eqz v9, :cond_4

    .line 67
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1

    .line 66
    .end local v2           #account_type:Ljava/lang/String;
    .end local v3           #dataset:Ljava/lang/String;
    .restart local v8       #account_type:Ljava/lang/String;
    .restart local v10       #dataset:Ljava/lang/String;
    :catchall_1
    move-exception v1

    move-object v3, v10

    .end local v10           #dataset:Ljava/lang/String;
    .restart local v3       #dataset:Ljava/lang/String;
    move-object v2, v8

    .end local v8           #account_type:Ljava/lang/String;
    .restart local v2       #account_type:Ljava/lang/String;
    goto :goto_3

    .end local v2           #account_type:Ljava/lang/String;
    .restart local v8       #account_type:Ljava/lang/String;
    :catchall_2
    move-exception v1

    move-object v2, v8

    .end local v8           #account_type:Ljava/lang/String;
    .restart local v2       #account_type:Ljava/lang/String;
    goto :goto_3

    :catchall_3
    move-exception v1

    goto :goto_3

    .line 63
    .end local v2           #account_type:Ljava/lang/String;
    .end local v3           #dataset:Ljava/lang/String;
    .restart local v8       #account_type:Ljava/lang/String;
    .restart local v10       #dataset:Ljava/lang/String;
    :catch_1
    move-exception v11

    move-object v3, v10

    .end local v10           #dataset:Ljava/lang/String;
    .restart local v3       #dataset:Ljava/lang/String;
    move-object v2, v8

    .end local v8           #account_type:Ljava/lang/String;
    .restart local v2       #account_type:Ljava/lang/String;
    goto :goto_2

    .end local v2           #account_type:Ljava/lang/String;
    .restart local v8       #account_type:Ljava/lang/String;
    :catch_2
    move-exception v11

    move-object v2, v8

    .end local v8           #account_type:Ljava/lang/String;
    .restart local v2       #account_type:Ljava/lang/String;
    goto :goto_2

    .restart local v4       #lookup:Ljava/lang/String;
    :catch_3
    move-exception v11

    goto :goto_2

    .end local v2           #account_type:Ljava/lang/String;
    .end local v3           #dataset:Ljava/lang/String;
    .end local v4           #lookup:Ljava/lang/String;
    .end local v5           #raw_contact_id:J
    .restart local v8       #account_type:Ljava/lang/String;
    .restart local v10       #dataset:Ljava/lang/String;
    .restart local v12       #raw_contact_id:J
    :cond_5
    move-object v3, v10

    .end local v10           #dataset:Ljava/lang/String;
    .restart local v3       #dataset:Ljava/lang/String;
    move-object v2, v8

    .end local v8           #account_type:Ljava/lang/String;
    .restart local v2       #account_type:Ljava/lang/String;
    move-wide v5, v12

    .end local v12           #raw_contact_id:J
    .restart local v5       #raw_contact_id:J
    goto :goto_1
.end method

.method public static final getRawContactId(Landroid/content/Context;Ljava/lang/String;)J
    .locals 10
    .parameter "context"
    .parameter "uid"

    .prologue
    .line 79
    const-wide/16 v8, -0x1

    .line 80
    .local v8, raw_contact_id:J
    const/4 v6, 0x0

    .line 82
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "contact_id"

    aput-object v4, v2, v3

    const-string v3, "sourceid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 88
    if-eqz v6, :cond_0

    .line 89
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "contact_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    goto :goto_0

    .line 96
    :cond_0
    if-eqz v6, :cond_1

    .line 97
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 100
    :cond_1
    :goto_1
    return-wide v8

    .line 93
    :catch_0
    move-exception v7

    .line 94
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "FacebookUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRawContactId failed! uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    if-eqz v6, :cond_1

    .line 97
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 96
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 97
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static final getRawContactUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 5
    .parameter "context"
    .parameter "uid"

    .prologue
    .line 20
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 21
    .local v2, uri:Landroid/net/Uri;
    invoke-static {p0, p1}, Lcom/htc/util/calendar/FacebookUtils;->getRawContactId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 22
    .local v0, raw_contact_id:J
    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-eqz v3, :cond_0

    .line 23
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 26
    :cond_0
    return-object v2
.end method

.method public static isLinkedContact(Ljava/lang/String;)Z
    .locals 5
    .parameter "lookupKey"

    .prologue
    const/16 v4, 0x2e

    .line 106
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    const/4 v1, 0x0

    .line 118
    :cond_0
    :goto_0
    return v1

    .line 109
    :cond_1
    const/4 v1, 0x0

    .line 110
    .local v1, isLinked:Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 112
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_0

    .line 113
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_4

    add-int/lit8 v3, v0, 0x1

    if-ge v3, v2, :cond_2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_4

    :cond_2
    add-int/lit8 v3, v0, -0x1

    if-lez v3, :cond_3

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_4

    .line 114
    :cond_3
    const/4 v1, 0x1

    .line 115
    goto :goto_0

    .line 112
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

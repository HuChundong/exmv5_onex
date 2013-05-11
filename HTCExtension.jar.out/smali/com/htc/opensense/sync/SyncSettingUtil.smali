.class public Lcom/htc/opensense/sync/SyncSettingUtil;
.super Ljava/lang/Object;
.source "SyncSettingUtil.java"

# interfaces
.implements Lcom/htc/opensense/sync/SyncSettings;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/htc/opensense/sync/SyncSettingUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/sync/SyncSettingUtil;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSyncSetting(Landroid/content/Context;Ljava/lang/String;IIILjava/lang/String;Z)V
    .locals 12
    .parameter "context"
    .parameter "accountType"
    .parameter "updateWhenOpen"
    .parameter "syncInterval"
    .parameter "syncOptionsResId"
    .parameter "pkgName"
    .parameter "override"

    .prologue
    .line 141
    const/4 v1, 0x0

    .line 142
    .local v1, client:Landroid/content/ContentProviderClient;
    const/4 v7, 0x0

    .line 143
    .local v7, cursor:Landroid/database/Cursor;
    const-wide/16 v9, -0x1

    .line 145
    .local v9, id:J
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 146
    if-eqz v1, :cond_7

    .line 147
    sget-object v2, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const-string v4, "account_type=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 153
    :goto_0
    if-eqz v7, :cond_0

    .line 154
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v9

    .line 161
    :cond_0
    if-eqz v7, :cond_1

    .line 162
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 164
    :cond_1
    if-eqz v1, :cond_2

    .line 165
    :goto_1
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 168
    :cond_2
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 169
    .local v11, values:Landroid/content/ContentValues;
    const-string v2, "account_type"

    invoke-virtual {v11, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    if-nez p6, :cond_3

    const-wide/16 v2, -0x1

    cmp-long v2, v9, v2

    if-nez v2, :cond_4

    .line 171
    :cond_3
    const-string v2, "refresh_when_open"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 172
    const-string v2, "sync_interval"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 174
    :cond_4
    const-string v2, "update_secs_res_id"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    const-string v2, "plugin_pkg_name"

    move-object/from16 v0, p5

    invoke-virtual {v11, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-wide/16 v2, -0x1

    cmp-long v2, v9, v2

    if-eqz v2, :cond_c

    .line 178
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 179
    if-eqz v1, :cond_5

    .line 180
    sget-object v2, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v11, v3, v4}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 185
    :cond_5
    if-eqz v1, :cond_6

    .line 186
    :goto_2
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 203
    :cond_6
    :goto_3
    return-void

    .line 151
    .end local v11           #values:Landroid/content/ContentValues;
    :cond_7
    :try_start_2
    sget-object v2, Lcom/htc/opensense/sync/SyncSettingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ContentProviderClient is null for uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 158
    :catch_0
    move-exception v8

    .line 159
    .local v8, e:Ljava/lang/Exception;
    :try_start_3
    sget-object v2, Lcom/htc/opensense/sync/SyncSettingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addSyncSetting() error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 161
    if-eqz v7, :cond_8

    .line 162
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 164
    :cond_8
    if-eqz v1, :cond_2

    goto/16 :goto_1

    .line 161
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_9

    .line 162
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 164
    :cond_9
    if-eqz v1, :cond_a

    .line 165
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 161
    :cond_a
    throw v2

    .line 185
    .restart local v11       #values:Landroid/content/ContentValues;
    :catchall_1
    move-exception v2

    if-eqz v1, :cond_b

    .line 186
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 185
    :cond_b
    throw v2

    .line 191
    :cond_c
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 192
    if-eqz v1, :cond_d

    .line 193
    sget-object v2, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v11}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 198
    :cond_d
    if-eqz v1, :cond_6

    .line 199
    :goto_4
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_3

    .line 198
    :catchall_2
    move-exception v2

    if-eqz v1, :cond_e

    .line 199
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 198
    :cond_e
    throw v2

    .line 183
    :catch_1
    move-exception v2

    .line 185
    if-eqz v1, :cond_6

    goto :goto_2

    .line 196
    :catch_2
    move-exception v2

    .line 198
    if-eqz v1, :cond_6

    goto :goto_4
.end method

.method public static addSyncSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Z)V
    .locals 13
    .parameter "context"
    .parameter "accountType"
    .parameter "accountName"
    .parameter "updateWhenOpen"
    .parameter "syncInterval"
    .parameter "syncOptionsResId"
    .parameter "syncUpdateIntent"
    .parameter "pkgName"
    .parameter "override"

    .prologue
    .line 361
    if-nez p2, :cond_1

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p7

    move/from16 v7, p8

    .line 362
    invoke-static/range {v1 .. v7}, Lcom/htc/opensense/sync/SyncSettingUtil;->addSyncSetting(Landroid/content/Context;Ljava/lang/String;IIILjava/lang/String;Z)V

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    const/4 v1, 0x0

    .line 367
    .local v1, client:Landroid/content/ContentProviderClient;
    const/4 v8, 0x0

    .line 368
    .local v8, cursor:Landroid/database/Cursor;
    const-wide/16 v10, -0x1

    .line 370
    .local v10, id:J
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 371
    if-eqz v1, :cond_8

    .line 372
    sget-object v2, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const-string v4, "account_type=? AND account_name=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 379
    :goto_1
    if-eqz v8, :cond_2

    .line 380
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 381
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    .line 387
    :cond_2
    if-eqz v8, :cond_3

    .line 388
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 390
    :cond_3
    if-eqz v1, :cond_4

    .line 391
    :goto_2
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 394
    :cond_4
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 395
    .local v12, values:Landroid/content/ContentValues;
    const-string v2, "account_type"

    invoke-virtual {v12, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v2, "account_name"

    invoke-virtual {v12, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    if-nez p8, :cond_5

    const-wide/16 v2, -0x1

    cmp-long v2, v10, v2

    if-nez v2, :cond_6

    .line 398
    :cond_5
    const-string v2, "refresh_when_open"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 399
    const-string v2, "sync_interval"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 401
    :cond_6
    const-string v2, "update_secs_res_id"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 402
    const-string v2, "update_intent_action"

    move-object/from16 v0, p6

    invoke-virtual {v12, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v2, "plugin_pkg_name"

    move-object/from16 v0, p7

    invoke-virtual {v12, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-wide/16 v2, -0x1

    cmp-long v2, v10, v2

    if-eqz v2, :cond_d

    .line 406
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 407
    if-eqz v1, :cond_7

    .line 408
    sget-object v2, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v12, v3, v4}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 413
    :cond_7
    if-eqz v1, :cond_0

    .line 414
    :goto_3
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_0

    .line 377
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_8
    :try_start_2
    sget-object v2, Lcom/htc/opensense/sync/SyncSettingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ContentProviderClient is null for uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 384
    :catch_0
    move-exception v9

    .line 385
    .local v9, e:Ljava/lang/Exception;
    :try_start_3
    sget-object v2, Lcom/htc/opensense/sync/SyncSettingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addSyncSetting() error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 387
    if-eqz v8, :cond_9

    .line 388
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 390
    :cond_9
    if-eqz v1, :cond_4

    goto/16 :goto_2

    .line 387
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_a

    .line 388
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 390
    :cond_a
    if-eqz v1, :cond_b

    .line 391
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 387
    :cond_b
    throw v2

    .line 413
    .restart local v12       #values:Landroid/content/ContentValues;
    :catchall_1
    move-exception v2

    if-eqz v1, :cond_c

    .line 414
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 413
    :cond_c
    throw v2

    .line 419
    :cond_d
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 420
    if-eqz v1, :cond_e

    .line 421
    sget-object v2, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v12}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 426
    :cond_e
    if-eqz v1, :cond_0

    .line 427
    :goto_4
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_0

    .line 426
    :catchall_2
    move-exception v2

    if-eqz v1, :cond_f

    .line 427
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 426
    :cond_f
    throw v2

    .line 411
    :catch_1
    move-exception v2

    .line 413
    if-eqz v1, :cond_0

    goto :goto_3

    .line 424
    :catch_2
    move-exception v2

    .line 426
    if-eqz v1, :cond_0

    goto :goto_4
.end method

.method public static final getUpdateIntervalSecs(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9
    .parameter "context"
    .parameter "accountType"

    .prologue
    .line 14
    const/4 v0, 0x0

    .line 15
    .local v0, client:Landroid/content/ContentProviderClient;
    const/4 v6, 0x0

    .line 17
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    sget-object v1, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "sync_interval"

    aput-object v4, v2, v3

    const-string v3, "account_type=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 25
    :goto_0
    if-eqz v6, :cond_7

    .line 26
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 27
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 34
    .local v8, mins:I
    if-eqz v6, :cond_0

    .line 35
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 37
    :cond_0
    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 42
    .end local v8           #mins:I
    :cond_1
    :goto_1
    return v8

    .line 23
    :cond_2
    :try_start_1
    sget-object v1, Lcom/htc/opensense/sync/SyncSettingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ContentProviderClient is null for uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 31
    :catch_0
    move-exception v7

    .line 32
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v1, Lcom/htc/opensense/sync/SyncSettingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUpdateIntervalSecs() error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    if-eqz v6, :cond_3

    .line 35
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 37
    :cond_3
    if-eqz v0, :cond_4

    .line 38
    .end local v7           #e:Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 42
    :cond_4
    const/16 v8, 0xe10

    goto :goto_1

    .line 34
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_5

    .line 35
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 37
    :cond_5
    if-eqz v0, :cond_6

    .line 38
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 34
    :cond_6
    throw v1

    :cond_7
    if-eqz v6, :cond_8

    .line 35
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 37
    :cond_8
    if-eqz v0, :cond_4

    goto :goto_2
.end method

.method public static final getUpdateIntervalSecs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .parameter "context"
    .parameter "accountType"
    .parameter "accountName"

    .prologue
    .line 211
    if-nez p2, :cond_1

    .line 212
    invoke-static {p0, p1}, Lcom/htc/opensense/sync/SyncSettingUtil;->getUpdateIntervalSecs(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    .line 243
    :cond_0
    :goto_0
    return v8

    .line 214
    :cond_1
    const/4 v0, 0x0

    .line 215
    .local v0, client:Landroid/content/ContentProviderClient;
    const/4 v6, 0x0

    .line 217
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_3

    .line 219
    sget-object v1, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "sync_interval"

    aput-object v4, v2, v3

    const-string v3, "account_type=? AND account_name=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 226
    :goto_1
    if-eqz v6, :cond_8

    .line 227
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 228
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 235
    .local v8, mins:I
    if-eqz v6, :cond_2

    .line 236
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 238
    :cond_2
    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .line 224
    .end local v8           #mins:I
    :cond_3
    :try_start_1
    sget-object v1, Lcom/htc/opensense/sync/SyncSettingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ContentProviderClient is null for uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 232
    :catch_0
    move-exception v7

    .line 233
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v1, Lcom/htc/opensense/sync/SyncSettingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUpdateIntervalSecs() error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 235
    if-eqz v6, :cond_4

    .line 236
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 238
    :cond_4
    if-eqz v0, :cond_5

    .line 239
    .end local v7           #e:Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 243
    :cond_5
    const/16 v8, 0xe10

    goto/16 :goto_0

    .line 235
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_6

    .line 236
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 238
    :cond_6
    if-eqz v0, :cond_7

    .line 239
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 235
    :cond_7
    throw v1

    :cond_8
    if-eqz v6, :cond_9

    .line 236
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 238
    :cond_9
    if-eqz v0, :cond_5

    goto :goto_2
.end method

.method public static isRefreshWhenOpen(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "accountType"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, client:Landroid/content/ContentProviderClient;
    const/4 v6, 0x0

    .line 71
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_2

    .line 73
    sget-object v1, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "refresh_when_open"

    aput-object v4, v2, v3

    const-string v3, "account_type=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 79
    :goto_0
    if-eqz v6, :cond_8

    .line 80
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 81
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getShort(I)S
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ne v1, v8, :cond_5

    move v1, v8

    .line 87
    :goto_1
    if-eqz v6, :cond_0

    .line 88
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 90
    :cond_0
    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 94
    :cond_1
    :goto_2
    return v1

    .line 77
    :cond_2
    :try_start_1
    sget-object v1, Lcom/htc/opensense/sync/SyncSettingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ContentProviderClient is null for uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v7

    .line 85
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v1, Lcom/htc/opensense/sync/SyncSettingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRefreshWhenOpen() error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    if-eqz v6, :cond_3

    .line 88
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 90
    :cond_3
    if-eqz v0, :cond_4

    .line 91
    .end local v7           #e:Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_4
    move v1, v8

    .line 94
    goto :goto_2

    :cond_5
    move v1, v9

    .line 81
    goto :goto_1

    .line 87
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_6

    .line 88
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 90
    :cond_6
    if-eqz v0, :cond_7

    .line 91
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 87
    :cond_7
    throw v1

    :cond_8
    if-eqz v6, :cond_9

    .line 88
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 90
    :cond_9
    if-eqz v0, :cond_4

    goto :goto_3
.end method

.method public static isRefreshWhenOpen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "accountType"
    .parameter "accountName"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 275
    if-nez p2, :cond_1

    .line 276
    invoke-static {p0, p1}, Lcom/htc/opensense/sync/SyncSettingUtil;->isRefreshWhenOpen(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 305
    :cond_0
    :goto_0
    return v1

    .line 278
    :cond_1
    const/4 v0, 0x0

    .line 279
    .local v0, client:Landroid/content/ContentProviderClient;
    const/4 v6, 0x0

    .line 281
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 282
    if-eqz v0, :cond_3

    .line 283
    sget-object v1, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "refresh_when_open"

    aput-object v4, v2, v3

    const-string v3, "account_type=? AND account_name=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 290
    :goto_1
    if-eqz v6, :cond_9

    .line 291
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 292
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getShort(I)S
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ne v1, v8, :cond_6

    move v1, v8

    .line 298
    :goto_2
    if-eqz v6, :cond_2

    .line 299
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 301
    :cond_2
    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .line 288
    :cond_3
    :try_start_1
    sget-object v1, Lcom/htc/opensense/sync/SyncSettingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ContentProviderClient is null for uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 295
    :catch_0
    move-exception v7

    .line 296
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v1, Lcom/htc/opensense/sync/SyncSettingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRefreshWhenOpen() error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 298
    if-eqz v6, :cond_4

    .line 299
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 301
    :cond_4
    if-eqz v0, :cond_5

    .line 302
    .end local v7           #e:Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_5
    move v1, v8

    .line 305
    goto/16 :goto_0

    :cond_6
    move v1, v9

    .line 292
    goto :goto_2

    .line 298
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_7

    .line 299
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 301
    :cond_7
    if-eqz v0, :cond_8

    .line 302
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 298
    :cond_8
    throw v1

    :cond_9
    if-eqz v6, :cond_a

    .line 299
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 301
    :cond_a
    if-eqz v0, :cond_5

    goto :goto_3
.end method

.method public static final setRefreshWhenOpen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .parameter "context"
    .parameter "accountType"
    .parameter "accountName"
    .parameter "refresh"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 310
    if-nez p2, :cond_1

    .line 311
    invoke-static {p0, p1, p3}, Lcom/htc/opensense/sync/SyncSettingUtil;->setRefreshWhenOpen(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 315
    .local v2, values:Landroid/content/ContentValues;
    const-string v5, "refresh_when_open"

    if-eqz p3, :cond_2

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 316
    const/4 v0, 0x0

    .line 318
    .local v0, client:Landroid/content/ContentProviderClient;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 319
    if-eqz v0, :cond_3

    .line 320
    sget-object v3, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "(account_type=? AND account_name=?)  OR (account_type=? AND account_name is NULL)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object p1, v5, v6

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_2
    if-eqz v0, :cond_0

    .line 331
    :goto_3
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .end local v0           #client:Landroid/content/ContentProviderClient;
    :cond_2
    move v3, v4

    .line 315
    goto :goto_1

    .line 325
    .restart local v0       #client:Landroid/content/ContentProviderClient;
    :cond_3
    :try_start_1
    sget-object v3, Lcom/htc/opensense/sync/SyncSettingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ContentProviderClient is null for uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 327
    :catch_0
    move-exception v1

    .line 328
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v3, Lcom/htc/opensense/sync/SyncSettingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRefreshWhenOpen() error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 330
    if-eqz v0, :cond_0

    goto :goto_3

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_4

    .line 331
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 330
    :cond_4
    throw v3
.end method

.method public static final setRefreshWhenOpen(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 7
    .parameter "context"
    .parameter "accountType"
    .parameter "refresh"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 99
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 100
    .local v2, values:Landroid/content/ContentValues;
    const-string v5, "refresh_when_open"

    if-eqz p2, :cond_1

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    const/4 v0, 0x0

    .line 103
    .local v0, client:Landroid/content/ContentProviderClient;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_2

    .line 105
    sget-object v3, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "account_type=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_1
    if-eqz v0, :cond_0

    .line 114
    :goto_2
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 117
    :cond_0
    return-void

    .end local v0           #client:Landroid/content/ContentProviderClient;
    :cond_1
    move v3, v4

    .line 100
    goto :goto_0

    .line 108
    .restart local v0       #client:Landroid/content/ContentProviderClient;
    :cond_2
    :try_start_1
    sget-object v3, Lcom/htc/opensense/sync/SyncSettingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ContentProviderClient is null for uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v3, Lcom/htc/opensense/sync/SyncSettingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRefreshWhenOpen() error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    if-eqz v0, :cond_0

    goto :goto_2

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_3

    .line 114
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 113
    :cond_3
    throw v3
.end method

.method public static final setUpdateIntervalSecs(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 7
    .parameter "context"
    .parameter "accountType"
    .parameter "sec"

    .prologue
    .line 47
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 48
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "sync_interval"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 49
    const/4 v0, 0x0

    .line 51
    .local v0, client:Landroid/content/ContentProviderClient;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    sget-object v3, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "account_type=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    if-eqz v0, :cond_0

    .line 62
    :goto_1
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 65
    :cond_0
    return-void

    .line 56
    :cond_1
    :try_start_1
    sget-object v3, Lcom/htc/opensense/sync/SyncSettingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ContentProviderClient is null for uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v3, Lcom/htc/opensense/sync/SyncSettingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setUpdateIntervalSecs() error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    if-eqz v0, :cond_0

    goto :goto_1

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 62
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 61
    :cond_2
    throw v3
.end method

.method public static final setUpdateIntervalSecs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter "context"
    .parameter "accountType"
    .parameter "accountName"
    .parameter "sec"

    .prologue
    .line 248
    if-nez p2, :cond_1

    .line 249
    invoke-static {p0, p1, p3}, Lcom/htc/opensense/sync/SyncSettingUtil;->setUpdateIntervalSecs(Landroid/content/Context;Ljava/lang/String;I)V

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 253
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "sync_interval"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 254
    const/4 v0, 0x0

    .line 256
    .local v0, client:Landroid/content/ContentProviderClient;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_2

    .line 258
    sget-object v3, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "account_type=? AND account_name=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_1
    if-eqz v0, :cond_0

    .line 268
    :goto_2
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .line 262
    :cond_2
    :try_start_1
    sget-object v3, Lcom/htc/opensense/sync/SyncSettingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ContentProviderClient is null for uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 264
    :catch_0
    move-exception v1

    .line 265
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v3, Lcom/htc/opensense/sync/SyncSettingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setUpdateIntervalSecs() error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 267
    if-eqz v0, :cond_0

    goto :goto_2

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_3

    .line 268
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 267
    :cond_3
    throw v3
.end method

.class final Lcom/htc/util/contacts/ContactsUtility$1;
.super Ljava/lang/Object;
.source "ContactsUtility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/util/contacts/ContactsUtility;->importAccountEmailToMyContact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accountType:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$email:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1279
    iput-object p1, p0, Lcom/htc/util/contacts/ContactsUtility$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/htc/util/contacts/ContactsUtility$1;->val$accountType:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/util/contacts/ContactsUtility$1;->val$email:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 30

    .prologue
    .line 1282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/ContactsUtility$1;->val$context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/htc/util/contacts/ContactsUtility;->getCacheMyContactIds(Landroid/content/ContentResolver;)Landroid/os/Bundle;

    move-result-object v7

    .line 1283
    .local v7, bMyContactIds:Landroid/os/Bundle;
    if-nez v7, :cond_1

    .line 1374
    :cond_0
    :goto_0
    return-void

    .line 1284
    :cond_1
    const-string v27, "contact_id"

    const-wide/16 v28, 0x0

    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    invoke-virtual {v7, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v17

    .line 1285
    .local v17, lMyContactId:J
    const-string v27, "_id"

    const-wide/16 v28, 0x0

    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    invoke-virtual {v7, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v19

    .line 1286
    .local v19, lMyRawContactId:J
    const-wide/16 v27, 0x0

    cmp-long v27, v27, v17

    if-gez v27, :cond_2

    const-wide/16 v27, 0x0

    cmp-long v27, v27, v19

    if-ltz v27, :cond_3

    .line 1287
    :cond_2
    sget-boolean v27, Lcom/htc/util/contacts/ContactsUtility;->DEBUG:Z

    if-eqz v27, :cond_0

    const-string v27, "ContactsUtility"

    const-string v28, "importAccountEmailToMyContact (0 >= lMyContactId || 0 >= lMyRawContactId) return"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1306
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/ContactsUtility$1;->val$context:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-wide/from16 v1, v17

    #calls: Lcom/htc/util/contacts/ContactsUtility;->queryProfileEntities(Landroid/content/Context;J)Ljava/util/ArrayList;
    invoke-static {v0, v1, v2}, Lcom/htc/util/contacts/ContactsUtility;->access$000(Landroid/content/Context;J)Ljava/util/ArrayList;

    move-result-object v11

    .line 1307
    .local v11, entitiesMy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    const/4 v12, 0x0

    .line 1308
    .local v12, entityMy:Landroid/content/Entity;
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Entity;

    .line 1309
    .local v9, e:Landroid/content/Entity;
    if-eqz v9, :cond_4

    .line 1310
    invoke-virtual {v9}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v24

    .line 1311
    .local v24, myValues:Landroid/content/ContentValues;
    const-string v27, "account_type"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1312
    .local v5, accountType:Ljava/lang/String;
    const-string v27, "account_name"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1313
    .local v4, accountName:Ljava/lang/String;
    const-string v27, "data_set"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1314
    .local v8, dataSet:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_4

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 1315
    move-object v12, v9

    .line 1321
    .end local v4           #accountName:Ljava/lang/String;
    .end local v5           #accountType:Ljava/lang/String;
    .end local v8           #dataSet:Ljava/lang/String;
    .end local v9           #e:Landroid/content/Entity;
    .end local v24           #myValues:Landroid/content/ContentValues;
    :cond_5
    const-string v27, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v27

    invoke-static {v12, v0}, Lcom/htc/util/contacts/ContactsUtility;->getContentValues(Landroid/content/Entity;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v23

    .line 1322
    .local v23, myEmailContentValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v6, 0x0

    .line 1323
    .local v6, bDuplicate:Z
    const-wide/16 v21, 0x0

    .line 1324
    .local v21, lSocialnetworkType:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/ContactsUtility$1;->val$accountType:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/htc/util/contacts/ContactsUtility;->getSocialnetworkAccountType(Ljava/lang/String;)J

    move-result-wide v14

    .line 1325
    .local v14, insertedAccountType:J
    sget-boolean v27, Lcom/htc/util/contacts/ContactsUtility;->DEBUG:Z

    if-eqz v27, :cond_6

    const-string v27, "ContactsUtility"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "importAccountEmailToMyContact insertedAccountType: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    :cond_6
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/ContentValues;

    .line 1328
    .local v26, v:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/ContactsUtility$1;->val$email:Ljava/lang/String;

    move-object/from16 v27, v0

    const-string v28, "data1"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_7

    .line 1329
    const-wide/high16 v27, 0x400c

    invoke-static/range {v27 .. v28}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 1330
    const/4 v6, 0x1

    .line 1356
    .end local v26           #v:Landroid/content/ContentValues;
    :cond_8
    :goto_1
    sget-boolean v27, Lcom/htc/util/contacts/ContactsUtility;->DEBUG:Z

    if-eqz v27, :cond_9

    const-string v27, "ContactsUtility"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "importAccountEmailToMyContact bDuplicate: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    :cond_9
    if-nez v6, :cond_0

    .line 1358
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1359
    .local v10, emailValues:Landroid/content/ContentValues;
    const-string v27, "raw_contact_id"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1360
    const-string v27, "data1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/ContactsUtility$1;->val$email:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    const-string v27, "mimetype"

    const-string v28, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    const-wide/high16 v27, 0x400c

    invoke-static/range {v27 .. v28}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v27

    if-eqz v27, :cond_e

    .line 1368
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/ContactsUtility$1;->val$context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    sget-object v28, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v25

    .line 1369
    .local v25, uriResult:Landroid/net/Uri;
    if-eqz v25, :cond_0

    .line 1370
    new-instance v16, Landroid/content/Intent;

    const-string v27, "com.htc.intent.action.MY_CONTACT_CHANGE"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1371
    .local v16, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/ContactsUtility$1;->val$context:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1333
    .end local v10           #emailValues:Landroid/content/ContentValues;
    .end local v16           #intent:Landroid/content/Intent;
    .end local v25           #uriResult:Landroid/net/Uri;
    .restart local v26       #v:Landroid/content/ContentValues;
    :cond_a
    const-string v27, "data7"

    invoke-virtual/range {v26 .. v27}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 1334
    .local v3, LSocialnetworkType:Ljava/lang/Long;
    if-eqz v3, :cond_c

    .line 1335
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    .line 1339
    :goto_3
    sget-boolean v27, Lcom/htc/util/contacts/ContactsUtility;->DEBUG:Z

    if-eqz v27, :cond_b

    const-string v27, "ContactsUtility"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "importAccountEmailToMyContact lSocialnetworkType: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    :cond_b
    const-wide/16 v27, 0x0

    cmp-long v27, v27, v21

    if-eqz v27, :cond_d

    .line 1341
    const-wide/16 v27, 0x0

    cmp-long v27, v27, v14

    if-eqz v27, :cond_7

    .line 1342
    cmp-long v27, v21, v14

    if-nez v27, :cond_7

    .line 1343
    const/4 v6, 0x1

    .line 1344
    goto/16 :goto_1

    .line 1337
    :cond_c
    const-wide/16 v21, 0x0

    goto :goto_3

    .line 1348
    :cond_d
    const-wide/16 v27, 0x0

    cmp-long v27, v27, v14

    if-nez v27, :cond_7

    .line 1349
    const/4 v6, 0x1

    .line 1350
    goto/16 :goto_1

    .line 1366
    .end local v3           #LSocialnetworkType:Ljava/lang/Long;
    .end local v26           #v:Landroid/content/ContentValues;
    .restart local v10       #emailValues:Landroid/content/ContentValues;
    :cond_e
    const-string v27, "data7"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/ContactsUtility$1;->val$accountType:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/htc/util/contacts/ContactsUtility;->getSocialnetworkAccountType(Ljava/lang/String;)J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_2
.end method

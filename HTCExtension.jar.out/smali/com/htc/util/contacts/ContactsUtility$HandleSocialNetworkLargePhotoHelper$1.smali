.class final Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper$1;
.super Landroid/os/Handler;
.source "ContactsUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->newMessageHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2271
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 48
    .parameter "msg"

    .prologue
    .line 2273
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 2557
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2276
    :pswitch_1
    sget-boolean v3, Lcom/htc/util/contacts/ContactsUtility;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "ContactsUtility"

    const-string v5, "MSG_CHECK_DOWNLOAD_SET"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    :cond_1
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    int-to-long v0, v3

    move-wide/from16 v35, v0

    .line 2278
    .local v35, lContactId:J
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/content/Context;

    .line 2279
    .local v15, context:Landroid/content/Context;
    const-wide/16 v5, 0x0

    cmp-long v3, v5, v35

    if-gez v3, :cond_0

    if-eqz v15, :cond_0

    .line 2280
    sget-boolean v3, Lcom/htc/util/contacts/ContactsUtility;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "ContactsUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_CHECK_DOWNLOAD_SET lContactId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v35

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://com.android.contacts/contacts/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v35

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/simpleSocialNetworkdata"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2283
    .local v4, uri:Landroid/net/Uri;
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    .line 2284
    .local v45, sbSelection:Ljava/lang/StringBuilder;
    const-string v3, "account_type = \'com.htc.socialnetwork.facebook\'"

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2285
    const-string v3, " AND "

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2286
    const-string v3, "( "

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2287
    const-string v3, "mimetype = \'vnd.android.cursor.item/photo\'"

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2288
    const-string v3, " OR "

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2289
    const-string v3, "mimetype = \'com.htc.socialnetwork.facebook/largeavatar\'"

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2290
    const-string v3, " )"

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2291
    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v31

    .line 2292
    .local v31, c:Landroid/database/Cursor;
    if-eqz v31, :cond_18

    .line 2293
    sget-boolean v3, Lcom/htc/util/contacts/ContactsUtility;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "ContactsUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_CHECK_DOWNLOAD_SET c.getCount() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    :cond_3
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_17

    .line 2295
    new-instance v42, Ljava/util/HashSet;

    invoke-direct/range {v42 .. v42}, Ljava/util/HashSet;-><init>()V

    .line 2296
    .local v42, rawContactIdset:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_4
    :goto_1
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2297
    const-string v3, "raw_contact_id"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    .line 2298
    .local v37, lRawContactId:J
    const-wide/16 v5, 0x0

    cmp-long v3, v5, v37

    if-gez v3, :cond_4

    .line 2299
    sget-boolean v3, Lcom/htc/util/contacts/ContactsUtility;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "ContactsUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_CHECK_DOWNLOAD_SET add rawContactIdset:lRawContactId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v37

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    :cond_5
    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2303
    .end local v37           #lRawContactId:J
    :cond_6
    sget-boolean v3, Lcom/htc/util/contacts/ContactsUtility;->DEBUG:Z

    if-eqz v3, :cond_7

    const-string v3, "ContactsUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_CHECK_DOWNLOAD_SET rawContactIdset.size() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v42 .. v42}, Ljava/util/HashSet;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    :cond_7
    invoke-virtual/range {v42 .. v42}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v33

    .local v33, i$:Ljava/util/Iterator;
    :cond_8
    :goto_2
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Long;

    .line 2305
    .local v23, LrawContactId:Ljava/lang/Long;
    sget-boolean v3, Lcom/htc/util/contacts/ContactsUtility;->DEBUG:Z

    if-eqz v3, :cond_9

    const-string v3, "ContactsUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_CHECK_DOWNLOAD_SET lRawContactId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    :cond_9
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2307
    const/4 v8, 0x0

    .line 2308
    .local v8, sLargeAvatarUrl:Ljava/lang/String;
    const/16 v24, 0x0

    .line 2309
    .local v24, bHasPhotoData:Z
    const/16 v26, 0x0

    .line 2310
    .local v26, bIsSocialNetworkPhotoData:Z
    const/16 v25, 0x1

    .line 2311
    .local v25, bIsSocialNetworkLargePhotoData:Z
    const-wide/16 v10, -0x1

    .line 2313
    .local v10, lDataId:J
    :cond_a
    sget-boolean v3, Lcom/htc/util/contacts/ContactsUtility;->DEBUG:Z

    if-eqz v3, :cond_b

    const-string v3, "ContactsUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_CHECK_DOWNLOAD_SET c.getPosition() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    :cond_b
    const-string v3, "raw_contact_id"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    .line 2315
    .restart local v37       #lRawContactId:J
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v5, v37

    if-nez v3, :cond_c

    .line 2316
    const-string v3, "mimetype"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v44

    .line 2317
    .local v44, sMimetype:Ljava/lang/String;
    const-string v3, "com.htc.socialnetwork.facebook/largeavatar"

    move-object/from16 v0, v44

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2318
    const-string v3, "data1"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2319
    sget-boolean v3, Lcom/htc/util/contacts/ContactsUtility;->DEBUG:Z

    if-eqz v3, :cond_c

    const-string v3, "ContactsUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_CHECK_DOWNLOAD_SET sLargeAvatarUrl "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2342
    .end local v44           #sMimetype:Ljava/lang/String;
    :cond_c
    :goto_3
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_a

    .line 2344
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 2345
    if-nez v24, :cond_15

    .line 2346
    sget-boolean v3, Lcom/htc/util/contacts/ContactsUtility;->DEBUG:Z

    if-eqz v3, :cond_d

    const-string v3, "ContactsUtility"

    const-string v5, "MSG_CHECK_DOWNLOAD_SET download and insert"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2347
    :cond_d
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    move-object v5, v15

    #calls: Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->downloadSocialNetworkLargePhoto(Landroid/content/Context;JLjava/lang/String;ZJ)V
    invoke-static/range {v5 .. v11}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->access$100(Landroid/content/Context;JLjava/lang/String;ZJ)V

    goto/16 :goto_2

    .line 2320
    .restart local v44       #sMimetype:Ljava/lang/String;
    :cond_e
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v44

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2321
    const/16 v24, 0x1

    .line 2322
    const-wide/16 v5, 0x0

    const-string v3, "data7"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    cmp-long v3, v5, v12

    if-eqz v3, :cond_f

    const-string v3, "data7"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2325
    :cond_f
    const/16 v26, 0x0

    .line 2329
    :goto_4
    sget-boolean v3, Lcom/htc/util/contacts/ContactsUtility;->DEBUG:Z

    if-eqz v3, :cond_10

    const-string v3, "ContactsUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_CHECK_DOWNLOAD_SET bIsSocialNetworkPhotoData "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2330
    :cond_10
    const-wide/16 v5, 0x0

    const-string v3, "data8"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    cmp-long v3, v5, v12

    if-eqz v3, :cond_11

    const-string v3, "data8"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2333
    :cond_11
    const/16 v25, 0x0

    .line 2337
    :goto_5
    sget-boolean v3, Lcom/htc/util/contacts/ContactsUtility;->DEBUG:Z

    if-eqz v3, :cond_12

    const-string v3, "ContactsUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_CHECK_DOWNLOAD_SET bIsSocialNetworkLargePhotoData "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    :cond_12
    const-string v3, "data_id"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 2339
    sget-boolean v3, Lcom/htc/util/contacts/ContactsUtility;->DEBUG:Z

    if-eqz v3, :cond_c

    const-string v3, "ContactsUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_CHECK_DOWNLOAD_SET lDataId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2327
    :cond_13
    const/16 v26, 0x1

    goto/16 :goto_4

    .line 2335
    :cond_14
    const/16 v25, 0x1

    goto :goto_5

    .line 2348
    .end local v44           #sMimetype:Ljava/lang/String;
    :cond_15
    if-eqz v24, :cond_8

    if-eqz v26, :cond_8

    if-nez v25, :cond_8

    .line 2349
    sget-boolean v3, Lcom/htc/util/contacts/ContactsUtility;->DEBUG:Z

    if-eqz v3, :cond_16

    const-string v3, "ContactsUtility"

    const-string v5, "MSG_CHECK_DOWNLOAD_SET download and update"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    :cond_16
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v9, 0x1

    move-object v5, v15

    #calls: Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->downloadSocialNetworkLargePhoto(Landroid/content/Context;JLjava/lang/String;ZJ)V
    invoke-static/range {v5 .. v11}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->access$100(Landroid/content/Context;JLjava/lang/String;ZJ)V

    goto/16 :goto_2

    .line 2355
    .end local v8           #sLargeAvatarUrl:Ljava/lang/String;
    .end local v10           #lDataId:J
    .end local v23           #LrawContactId:Ljava/lang/Long;
    .end local v24           #bHasPhotoData:Z
    .end local v25           #bIsSocialNetworkLargePhotoData:Z
    .end local v26           #bIsSocialNetworkPhotoData:Z
    .end local v33           #i$:Ljava/util/Iterator;
    .end local v37           #lRawContactId:J
    .end local v42           #rawContactIdset:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_17
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 2356
    const/16 v31, 0x0

    .line 2359
    :cond_18
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isFaceBookPhoneProject()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2360
    move-wide/from16 v0, v35

    #calls: Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->downloadOriginalFacebookLargePhoto(JLandroid/content/Context;)V
    invoke-static {v0, v1, v15}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->access$200(JLandroid/content/Context;)V

    goto/16 :goto_0

    .line 2367
    .end local v4           #uri:Landroid/net/Uri;
    .end local v15           #context:Landroid/content/Context;
    .end local v31           #c:Landroid/database/Cursor;
    .end local v35           #lContactId:J
    .end local v45           #sbSelection:Ljava/lang/StringBuilder;
    :pswitch_2
    sget-boolean v3, Lcom/htc/util/contacts/ContactsUtility;->DEBUG:Z

    if-eqz v3, :cond_19

    .line 2368
    const/16 v3, 0x34

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    if-ne v3, v5, :cond_1c

    .line 2369
    const-string v3, "ContactsUtility"

    const-string v5, "MSG_DOWNLOAD_UPDATE"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    :cond_19
    :goto_6
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/content/Context;

    .line 2375
    .restart local v15       #context:Landroid/content/Context;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v28

    .line 2376
    .local v28, bundle:Landroid/os/Bundle;
    if-eqz v15, :cond_0

    if-eqz v28, :cond_0

    .line 2377
    const-string v3, "raw_contact_id"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v37

    .line 2378
    .restart local v37       #lRawContactId:J
    const-string v3, "large_avatar_url"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2379
    .restart local v8       #sLargeAvatarUrl:Ljava/lang/String;
    const-wide/16 v5, 0x0

    cmp-long v3, v5, v37

    if-gez v3, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2381
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->access$300()Landroid/net/http/AndroidHttpClient;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/htc/util/contacts/ContactsUtility;->getFromRemote4(Ljava/lang/String;Landroid/net/http/AndroidHttpClient;)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 2382
    .local v27, bmPhoto:Landroid/graphics/Bitmap;
    if-nez v27, :cond_1a

    .line 2383
    const-string v3, "ContactsUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_DOWNLOAD_UPDATE(INSERT) getFromRemote3 NULL! sLargeAvatarUrl: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    const-string v3, "ContactsUtility"

    const-string v5, "MSG_DOWNLOAD_UPDATE(INSERT) getFromRemote3 NULL! use default photo!"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    const/16 v3, 0x2d0

    const/16 v5, 0x2d0

    invoke-static {v15, v3, v5}, Lcom/htc/util/contacts/ContactsUtility;->getDefaultPeoplePhoto(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 2386
    if-nez v27, :cond_1a

    .line 2387
    const-string v3, "ContactsUtility"

    const-string v5, "MSG_DOWNLOAD_UPDATE(INSERT) getFromRemote3 NULL! use default photo! still NULL!!"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    :cond_1a
    if-eqz v27, :cond_0

    .line 2391
    sget-boolean v3, Lcom/htc/util/contacts/ContactsUtility;->DEBUG:Z

    if-eqz v3, :cond_1b

    const-string v3, "ContactsUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_DOWNLOAD_UPDATE(INSERT) bmPhoto W H:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2394
    :cond_1b
    const/16 v3, 0x2d0

    const/16 v5, 0x2d0

    move-object/from16 v0, v27

    invoke-static {v0, v3, v5}, Lcom/htc/util/contacts/PhotoUtils;->getScaledCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 2404
    if-nez v27, :cond_1d

    .line 2405
    sget-boolean v3, Lcom/htc/util/contacts/ContactsUtility;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ContactsUtility"

    const-string v5, "MSG_DOWNLOAD_UPDATE(INSERT) bmPhoto after getFacebookSquareBitmap null return "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2370
    .end local v8           #sLargeAvatarUrl:Ljava/lang/String;
    .end local v15           #context:Landroid/content/Context;
    .end local v27           #bmPhoto:Landroid/graphics/Bitmap;
    .end local v28           #bundle:Landroid/os/Bundle;
    .end local v37           #lRawContactId:J
    :cond_1c
    const/16 v3, 0x35

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    if-ne v3, v5, :cond_19

    .line 2371
    const-string v3, "ContactsUtility"

    const-string v5, "MSG_DOWNLOAD_INSERT"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2409
    .restart local v8       #sLargeAvatarUrl:Ljava/lang/String;
    .restart local v15       #context:Landroid/content/Context;
    .restart local v27       #bmPhoto:Landroid/graphics/Bitmap;
    .restart local v28       #bundle:Landroid/os/Bundle;
    .restart local v37       #lRawContactId:J
    :cond_1d
    sget v3, Lcom/htc/util/contacts/PhotoUtils;->JPEG_QUALITY_50:I

    move-object/from16 v0, v27

    #calls: Lcom/htc/util/contacts/ContactsUtility;->getPhotoByteArray(Landroid/graphics/Bitmap;I)[B
    invoke-static {v0, v3}, Lcom/htc/util/contacts/ContactsUtility;->access$400(Landroid/graphics/Bitmap;I)[B

    move-result-object v30

    .line 2410
    .local v30, byteArrayPhoto:[B
    if-eqz v30, :cond_0

    .line 2411
    sget-boolean v3, Lcom/htc/util/contacts/ContactsUtility;->DEBUG:Z

    if-eqz v3, :cond_1e

    const-string v3, "ContactsUtility"

    const-string v5, "MSG_DOWNLOAD_UPDATE(INSERT) null != byteArrayPhoto"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    :cond_1e
    new-instance v47, Landroid/content/ContentValues;

    invoke-direct/range {v47 .. v47}, Landroid/content/ContentValues;-><init>()V

    .line 2413
    .local v47, valuesDataPhoto:Landroid/content/ContentValues;
    const-string v3, "raw_contact_id"

    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2414
    const-string v3, "mimetype"

    const-string v5, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v47

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2415
    const-string v3, "data15"

    move-object/from16 v0, v47

    move-object/from16 v1, v30

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2430
    const-string v3, "data7"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2431
    const-string v3, "data8"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2432
    const-string v3, "data9"

    move-object/from16 v0, v47

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2434
    const/16 v3, 0x34

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    if-ne v3, v5, :cond_21

    .line 2435
    const-string v3, "data_id"

    const-wide/16 v5, -0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 2436
    .restart local v10       #lDataId:J
    const-wide/16 v5, -0x1

    cmp-long v3, v5, v10

    if-gez v3, :cond_20

    .line 2437
    sget-boolean v3, Lcom/htc/util/contacts/ContactsUtility;->DEBUG:Z

    if-eqz v3, :cond_1f

    const-string v3, "ContactsUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_DOWNLOAD_UPDATE do lDataId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    :cond_1f
    :try_start_0
    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v47

    invoke-virtual {v3, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2473
    .end local v10           #lDataId:J
    :cond_20
    :goto_7
    move-wide/from16 v0, v37

    invoke-static {v15, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->getContactId(Landroid/content/Context;J)J

    move-result-wide v35

    .line 2474
    .restart local v35       #lContactId:J
    move-wide/from16 v0, v35

    #calls: Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->broadcastFavoriteChangeIntent(Landroid/content/Context;J)V
    invoke-static {v15, v0, v1}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->access$500(Landroid/content/Context;J)V

    goto/16 :goto_0

    .line 2440
    .end local v35           #lContactId:J
    .restart local v10       #lDataId:J
    :catch_0
    move-exception v32

    .line 2441
    .local v32, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v3, "ContactsUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update sn photo fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2442
    .end local v32           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v32

    .line 2443
    .local v32, e:Landroid/database/sqlite/SQLiteException;
    const-string v3, "ContactsUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update sn photo fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2446
    .end local v10           #lDataId:J
    .end local v32           #e:Landroid/database/sqlite/SQLiteException;
    :cond_21
    const/16 v3, 0x35

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    if-ne v3, v5, :cond_20

    .line 2447
    sget-boolean v3, Lcom/htc/util/contacts/ContactsUtility;->DEBUG:Z

    if-eqz v3, :cond_22

    const-string v3, "ContactsUtility"

    const-string v5, "MSG_DOWNLOAD_INSERT do"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    :cond_22
    new-instance v29, Landroid/os/Bundle;

    invoke-direct/range {v29 .. v29}, Landroid/os/Bundle;-><init>()V

    .line 2452
    .local v29, bundleData:Landroid/os/Bundle;
    move-wide/from16 v0, v37

    move-object/from16 v2, v29

    invoke-static {v15, v0, v1, v2}, Lcom/htc/util/contacts/ContactsUtility;->isRawContactHasPhoto(Landroid/content/Context;JLandroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 2453
    const-string v3, "data_id"

    const-wide/16 v5, -0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 2454
    .restart local v10       #lDataId:J
    sget-boolean v3, Lcom/htc/util/contacts/ContactsUtility;->DEBUG:Z

    if-eqz v3, :cond_23

    const-string v3, "ContactsUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_DOWNLOAD_INSERT insert changed to update!!! lDataId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2456
    :cond_23
    :try_start_1
    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v47

    invoke-virtual {v3, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_7

    .line 2457
    :catch_2
    move-exception v32

    .line 2458
    .local v32, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v3, "ContactsUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update sn photo fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 2459
    .end local v32           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_3
    move-exception v32

    .line 2460
    .local v32, e:Landroid/database/sqlite/SQLiteException;
    const-string v3, "ContactsUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update sn photo fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 2463
    .end local v10           #lDataId:J
    .end local v32           #e:Landroid/database/sqlite/SQLiteException;
    :cond_24
    sget-boolean v3, Lcom/htc/util/contacts/ContactsUtility;->DEBUG:Z

    if-eqz v3, :cond_25

    const-string v3, "ContactsUtility"

    const-string v5, "MSG_DOWNLOAD_INSERT do still insert"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    :cond_25
    :try_start_2
    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v47

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_5

    goto/16 :goto_7

    .line 2466
    :catch_4
    move-exception v32

    .line 2467
    .local v32, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v3, "ContactsUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insert sn photo fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 2468
    .end local v32           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_5
    move-exception v32

    .line 2469
    .local v32, e:Landroid/database/sqlite/SQLiteException;
    const-string v3, "ContactsUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insert sn photo fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 2481
    .end local v8           #sLargeAvatarUrl:Ljava/lang/String;
    .end local v15           #context:Landroid/content/Context;
    .end local v27           #bmPhoto:Landroid/graphics/Bitmap;
    .end local v28           #bundle:Landroid/os/Bundle;
    .end local v29           #bundleData:Landroid/os/Bundle;
    .end local v30           #byteArrayPhoto:[B
    .end local v32           #e:Landroid/database/sqlite/SQLiteException;
    .end local v37           #lRawContactId:J
    .end local v47           #valuesDataPhoto:Landroid/content/ContentValues;
    :pswitch_3
    sget-boolean v3, Lcom/htc/util/contacts/ContactsUtility;->DEBUG:Z

    if-eqz v3, :cond_26

    const-string v3, "ContactsUtility"

    const-string v5, "MSG_FAVORITE_CHANGE"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    :cond_26
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    int-to-long v0, v3

    move-wide/from16 v35, v0

    .line 2483
    .restart local v35       #lContactId:J
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/content/Context;

    .line 2484
    .restart local v15       #context:Landroid/content/Context;
    const-wide/16 v5, 0x0

    cmp-long v3, v5, v35

    if-gez v3, :cond_0

    if-eqz v15, :cond_0

    .line 2485
    sget-boolean v3, Lcom/htc/util/contacts/ContactsUtility;->DEBUG:Z

    if-eqz v3, :cond_27

    const-string v3, "ContactsUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_FAVORITE_CHANGE lContactId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v35

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2486
    :cond_27
    new-instance v34, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.FAVORITE_CHANGE"

    move-object/from16 v0, v34

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2487
    .local v34, intent:Landroid/content/Intent;
    const-string v3, "contact_id"

    move-object/from16 v0, v34

    move-wide/from16 v1, v35

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2488
    move-object/from16 v0, v34

    invoke-virtual {v15, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2493
    .end local v15           #context:Landroid/content/Context;
    .end local v34           #intent:Landroid/content/Intent;
    .end local v35           #lContactId:J
    :pswitch_4
    sget-boolean v3, Lcom/htc/util/contacts/ContactsUtility;->DEBUG:Z

    if-eqz v3, :cond_28

    const-string v3, "ContactsUtility"

    const-string v5, "MSG_CHECK_DOWNLOAD_ORIGINAL_FACEBOOK_LARGE_PHOTO"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2494
    :cond_28
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/content/Context;

    .line 2495
    .restart local v15       #context:Landroid/content/Context;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v28

    .line 2496
    .restart local v28       #bundle:Landroid/os/Bundle;
    if-eqz v15, :cond_0

    if-eqz v28, :cond_0

    .line 2497
    const-string v3, "_id"

    const-wide/16 v5, -0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v17

    .line 2498
    .local v17, rawContactId:J
    const-string v3, "sourceid"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2499
    .local v14, sourceId:Ljava/lang/String;
    const-wide/16 v5, 0x0

    cmp-long v3, v5, v17

    if-gez v3, :cond_0

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2500
    move-wide/from16 v0, v17

    #calls: Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->doDownloadOriginalFacebookLargePhoto(JLjava/lang/String;Landroid/content/Context;)V
    invoke-static {v0, v1, v14, v15}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->access$600(JLjava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 2505
    .end local v14           #sourceId:Ljava/lang/String;
    .end local v15           #context:Landroid/content/Context;
    .end local v17           #rawContactId:J
    .end local v28           #bundle:Landroid/os/Bundle;
    :pswitch_5
    sget-boolean v3, Lcom/htc/util/contacts/ContactsUtility;->DEBUG:Z

    if-eqz v3, :cond_29

    const-string v3, "ContactsUtility"

    const-string v5, "MSG_DOWNLOAD_ORIGINAL_FACEBOOK_LARGE_PHOTO"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2506
    :cond_29
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/content/Context;

    .line 2507
    .restart local v15       #context:Landroid/content/Context;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v28

    .line 2508
    .restart local v28       #bundle:Landroid/os/Bundle;
    if-eqz v15, :cond_0

    if-eqz v28, :cond_0

    .line 2510
    const-string v3, "SocialServiceManager"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v39

    check-cast v39, Landroid/os/Message;

    .line 2511
    .local v39, objMsg:Landroid/os/Message;
    if-eqz v39, :cond_0

    .line 2512
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/htc/opensense/social/SocialServiceManager;

    .line 2513
    .local v46, serviceManager:Lcom/htc/opensense/social/SocialServiceManager;
    if-eqz v46, :cond_0

    .line 2514
    const-string v3, "sourceid"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2515
    .restart local v14       #sourceId:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2517
    const/4 v3, 0x1

    :try_start_3
    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v14, v3, v5

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Lcom/htc/opensense/social/SocialServiceManager;->getPersonOps([Ljava/lang/String;)Ljava/util/List;

    move-result-object v40

    .line 2518
    .local v40, people:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    const/16 v16, 0x0

    .line 2519
    .local v16, largeBuddyIconUrl:Ljava/lang/String;
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v33

    .restart local v33       #i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/htc/opensense/social/PersonOp;

    .line 2520
    .local v41, person:Lcom/htc/opensense/social/PersonOp;
    if-eqz v41, :cond_2a

    invoke-virtual/range {v41 .. v41}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v3

    if-eqz v3, :cond_2a

    .line 2521
    invoke-virtual/range {v41 .. v41}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v3

    iget-object v0, v3, Lcom/htc/opensense/social/data/Person;->largeBuddyIconUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 2523
    :cond_2a
    const-string v3, "ContactsUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "downloadOriginalFacebookLargePhoto Large avatar:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_8

    .line 2528
    .end local v16           #largeBuddyIconUrl:Ljava/lang/String;
    .end local v33           #i$:Ljava/util/Iterator;
    .end local v40           #people:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    .end local v41           #person:Lcom/htc/opensense/social/PersonOp;
    :catch_6
    move-exception v32

    .line 2529
    .local v32, e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    :try_start_4
    invoke-virtual/range {v32 .. v32}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->printStackTrace()V

    .line 2530
    const-string v3, "ContactsUtility"

    const-string v5, "error"

    move-object/from16 v0, v32

    invoke-static {v3, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2532
    if-eqz v46, :cond_0

    .line 2533
    invoke-virtual/range {v46 .. v46}, Lcom/htc/opensense/social/SocialServiceManager;->disconnect()V

    goto/16 :goto_0

    .line 2525
    .end local v32           #e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    .restart local v16       #largeBuddyIconUrl:Ljava/lang/String;
    .restart local v33       #i$:Ljava/util/Iterator;
    .restart local v40       #people:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    :cond_2b
    :try_start_5
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 2526
    const-string v3, "_id"

    const-wide/16 v5, -0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    const/16 v17, 0x3

    #calls: Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->doDownloadOriginalFacebookLargePhoto(JLjava/lang/String;Landroid/content/Context;Ljava/lang/String;I)V
    invoke-static/range {v12 .. v17}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->access$700(JLjava/lang/String;Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_5 .. :try_end_5} :catch_6

    .line 2532
    :cond_2c
    if-eqz v46, :cond_0

    .line 2533
    invoke-virtual/range {v46 .. v46}, Lcom/htc/opensense/social/SocialServiceManager;->disconnect()V

    goto/16 :goto_0

    .line 2532
    .end local v16           #largeBuddyIconUrl:Ljava/lang/String;
    .end local v33           #i$:Ljava/util/Iterator;
    .end local v40           #people:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    :catchall_0
    move-exception v3

    if-eqz v46, :cond_2d

    .line 2533
    invoke-virtual/range {v46 .. v46}, Lcom/htc/opensense/social/SocialServiceManager;->disconnect()V

    :cond_2d
    throw v3

    .line 2540
    .end local v14           #sourceId:Ljava/lang/String;
    .end local v15           #context:Landroid/content/Context;
    .end local v28           #bundle:Landroid/os/Bundle;
    .end local v39           #objMsg:Landroid/os/Message;
    .end local v46           #serviceManager:Lcom/htc/opensense/social/SocialServiceManager;
    :pswitch_6
    sget-boolean v3, Lcom/htc/util/contacts/ContactsUtility;->DEBUG:Z

    if-eqz v3, :cond_2e

    const-string v3, "ContactsUtility"

    const-string v5, "MSG_RE_DOWNLOAD_ORIGINAL_FACEBOOK_LARGE_PHOTO"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2541
    :cond_2e
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/content/Context;

    .line 2542
    .restart local v15       #context:Landroid/content/Context;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v28

    .line 2543
    .restart local v28       #bundle:Landroid/os/Bundle;
    if-eqz v15, :cond_0

    if-eqz v28, :cond_0

    .line 2544
    const-string v3, "_id"

    const-wide/16 v5, -0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v17

    .line 2545
    .restart local v17       #rawContactId:J
    const-string v3, "sourceid"

    const-string v5, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2546
    .restart local v14       #sourceId:Ljava/lang/String;
    const-string v3, "LargeUrl"

    const-string v5, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 2547
    .local v21, largeAvatarUrl:Ljava/lang/String;
    const-string v3, "RetryTimes"

    const-wide/16 v5, -0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    long-to-int v0, v5

    move/from16 v43, v0

    .line 2548
    .local v43, retryTimes:I
    const-wide/16 v5, 0x0

    cmp-long v3, v5, v17

    if-gez v3, :cond_0

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-lez v43, :cond_0

    .line 2549
    add-int/lit8 v22, v43, -0x1

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    #calls: Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->doDownloadOriginalFacebookLargePhoto(JLjava/lang/String;Landroid/content/Context;Ljava/lang/String;I)V
    invoke-static/range {v17 .. v22}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->access$700(JLjava/lang/String;Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2554
    .end local v14           #sourceId:Ljava/lang/String;
    .end local v15           #context:Landroid/content/Context;
    .end local v17           #rawContactId:J
    .end local v21           #largeAvatarUrl:Ljava/lang/String;
    .end local v28           #bundle:Landroid/os/Bundle;
    .end local v43           #retryTimes:I
    :pswitch_7
    #calls: Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->endHandler()V
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->access$800()V

    goto/16 :goto_0

    .line 2273
    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_7
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.class final Lcom/htc/util/contacts/ContactsUtility$3;
.super Ljava/lang/Object;
.source "ContactsUtility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/util/contacts/ContactsUtility;->importToMyContact(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$lContactId:J


# direct methods
.method constructor <init>(Landroid/content/Context;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1605
    iput-object p1, p0, Lcom/htc/util/contacts/ContactsUtility$3;->val$context:Landroid/content/Context;

    iput-wide p2, p0, Lcom/htc/util/contacts/ContactsUtility$3;->val$lContactId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 47

    .prologue
    .line 1608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/contacts/ContactsUtility$3;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/util/contacts/ContactsUtility;->getCacheMyContactIds(Landroid/content/ContentResolver;)Landroid/os/Bundle;

    move-result-object v10

    .line 1609
    .local v10, bMyContactIds:Landroid/os/Bundle;
    if-nez v10, :cond_1

    .line 1790
    :cond_0
    :goto_0
    return-void

    .line 1610
    :cond_1
    const-string v2, "contact_id"

    const-wide/16 v3, 0x0

    invoke-virtual {v10, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v30

    .line 1611
    .local v30, lMyContactId:J
    const-string v2, "_id"

    const-wide/16 v3, 0x0

    invoke-virtual {v10, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v32

    .line 1612
    .local v32, lMyRawContactId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v2, v30

    if-gez v2, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v2, v2, v32

    if-ltz v2, :cond_3

    .line 1613
    :cond_2
    sget-boolean v2, Lcom/htc/util/contacts/ContactsUtility;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ContactsUtility"

    const-string v3, "importToMyContact (0 >= lMyContactId || 0 >= lMyRawContactId) return"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1643
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/contacts/ContactsUtility$3;->val$context:Landroid/content/Context;

    move-wide/from16 v0, v30

    #calls: Lcom/htc/util/contacts/ContactsUtility;->queryProfileEntities(Landroid/content/Context;J)Ljava/util/ArrayList;
    invoke-static {v2, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->access$000(Landroid/content/Context;J)Ljava/util/ArrayList;

    move-result-object v20

    .line 1644
    .local v20, entitiesMy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    sget-boolean v2, Lcom/htc/util/contacts/ContactsUtility;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "ContactsUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "importToMyContact entitiesMy.size(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    :cond_4
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility;->queryEditableAccount()Ljava/util/ArrayList;

    move-result-object v17

    .line 1648
    .local v17, editableAccount:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v29, 0x0

    .line 1649
    .local v29, iterator:Landroid/content/EntityIterator;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1651
    .local v19, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    :try_start_0
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    .line 1652
    .local v44, sbSelection:Ljava/lang/StringBuilder;
    const-string v2, " ( "

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1653
    const-string v2, " ( "

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1654
    const-string v2, "contact_id"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1655
    const-string v2, " = "

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1656
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/util/contacts/ContactsUtility$3;->val$lContactId:J

    move-object/from16 v0, v44

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1657
    const-string v2, " ) "

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1658
    const-string v2, " AND "

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1659
    const-string v2, "account_type"

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/htc/util/contacts/ContactsUtility;->getOrString(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1660
    const-string v2, " ) "

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1662
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/contacts/ContactsUtility$3;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v29

    .line 1664
    :goto_1
    invoke-interface/range {v29 .. v29}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1665
    invoke-interface/range {v29 .. v29}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1668
    .end local v44           #sbSelection:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v2

    if-eqz v29, :cond_5

    .line 1669
    invoke-interface/range {v29 .. v29}, Landroid/content/EntityIterator;->close()V

    .line 1670
    const/16 v29, 0x0

    :cond_5
    throw v2

    .line 1668
    .restart local v44       #sbSelection:Ljava/lang/StringBuilder;
    :cond_6
    if-eqz v29, :cond_7

    .line 1669
    invoke-interface/range {v29 .. v29}, Landroid/content/EntityIterator;->close()V

    .line 1670
    const/16 v29, 0x0

    .line 1674
    :cond_7
    sget-object v2, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "data"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v40

    .line 1675
    .local v40, profileDataUri:Landroid/net/Uri;
    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    .line 1676
    .local v39, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v38, 0x0

    .line 1677
    .local v38, operation:Landroid/content/ContentProviderOperation;
    const/4 v11, 0x0

    .line 1678
    .local v11, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_8
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/Entity;

    .line 1679
    .local v21, entity:Landroid/content/Entity;
    invoke-virtual/range {v21 .. v21}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v18

    .line 1681
    .local v18, entValues:Landroid/content/ContentValues;
    const-string v2, "_id"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v41

    .line 1682
    .local v41, rawContactId:J
    sget-boolean v2, Lcom/htc/util/contacts/ContactsUtility;->DEBUG:Z

    if-eqz v2, :cond_9

    const-string v2, "ContactsUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "importToMyContact rawContactId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v41

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    :cond_9
    invoke-virtual/range {v21 .. v21}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_a
    :goto_2
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/content/Entity$NamedContentValues;

    .line 1684
    .local v45, subValue:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v45

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v23, v0

    .line 1687
    .local v23, entryValues:Landroid/content/ContentValues;
    const-string v2, "mimetype"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 1688
    .local v35, mimetype:Ljava/lang/String;
    if-eqz v35, :cond_a

    .line 1689
    sget-boolean v2, Lcom/htc/util/contacts/ContactsUtility;->DEBUG:Z

    if-eqz v2, :cond_b

    const-string v2, "ContactsUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "importToMyContact mimetype: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    :cond_b
    const/16 v38, 0x0

    .line 1691
    const/4 v11, 0x0

    .line 1692
    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "vnd.android.cursor.item/im"

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "vnd.android.cursor.item/note"

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "vnd.android.cursor.item/nickname"

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "vnd.android.cursor.item/website"

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1703
    :cond_c
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->isDuplicate(Ljava/util/ArrayList;Landroid/content/ContentValues;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1706
    invoke-static/range {v23 .. v23}, Lcom/htc/util/contacts/ContactsUtility;->getMimeTypeContentValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v34

    .line 1707
    .local v34, mimeTypeValues:Landroid/content/ContentValues;
    if-eqz v34, :cond_a

    .line 1708
    const-string v2, "raw_contact_id"

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1709
    invoke-static/range {v40 .. v40}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 1710
    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1711
    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v38

    .line 1712
    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1714
    .end local v34           #mimeTypeValues:Landroid/content/ContentValues;
    :cond_d
    const-string v2, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1715
    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->isContainMimeType(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1716
    invoke-static/range {v23 .. v23}, Lcom/htc/util/contacts/ContactsUtility;->getMimeTypeContentValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v34

    .line 1717
    .restart local v34       #mimeTypeValues:Landroid/content/ContentValues;
    if-eqz v34, :cond_a

    .line 1718
    const-string v2, "raw_contact_id"

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1719
    invoke-static/range {v40 .. v40}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 1720
    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1721
    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v38

    .line 1722
    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1725
    .end local v34           #mimeTypeValues:Landroid/content/ContentValues;
    :cond_e
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1726
    invoke-static/range {v23 .. v23}, Lcom/htc/util/contacts/ContactsUtility;->getMimeTypeContentValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v34

    .line 1727
    .restart local v34       #mimeTypeValues:Landroid/content/ContentValues;
    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->isContainMimeType(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1728
    const-string v2, "raw_contact_id"

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1729
    invoke-static/range {v40 .. v40}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 1730
    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1731
    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v38

    .line 1732
    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1734
    :cond_f
    const/16 v22, 0x0

    .line 1735
    .local v22, entityMy:Landroid/content/Entity;
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, i$:Ljava/util/Iterator;
    :cond_10
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/Entity;

    .line 1736
    .local v16, e:Landroid/content/Entity;
    if-eqz v16, :cond_10

    .line 1737
    invoke-virtual/range {v16 .. v16}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v37

    .line 1738
    .local v37, myValues:Landroid/content/ContentValues;
    const-string v2, "account_type"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1739
    .local v9, accountType:Ljava/lang/String;
    const-string v2, "account_name"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1740
    .local v8, accountName:Ljava/lang/String;
    const-string v2, "data_set"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1741
    .local v14, dataSet:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1742
    move-object/from16 v22, v16

    .line 1747
    .end local v8           #accountName:Ljava/lang/String;
    .end local v9           #accountType:Ljava/lang/String;
    .end local v14           #dataSet:Ljava/lang/String;
    .end local v16           #e:Landroid/content/Entity;
    .end local v37           #myValues:Landroid/content/ContentValues;
    :cond_11
    invoke-virtual/range {v22 .. v22}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_12
    :goto_3
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/content/Entity$NamedContentValues;

    .line 1748
    .local v46, subValueMy:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v46

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v24, v0

    .line 1749
    .local v24, entryValuesMy:Landroid/content/ContentValues;
    const-string v2, "mimetype"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 1750
    .local v36, mimetypeMy:Ljava/lang/String;
    if-eqz v36, :cond_12

    .line 1751
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1752
    const-string v2, "data1"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1753
    .local v15, dispalyNameMy:Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1754
    const-string v2, "_id"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_13

    const-string v2, "_id"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 1755
    .local v12, dataId:J
    :goto_4
    const-wide/16 v2, 0x0

    cmp-long v2, v2, v12

    if-gez v2, :cond_12

    .line 1756
    invoke-static/range {v40 .. v40}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 1757
    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1758
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1759
    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v38

    .line 1760
    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1754
    .end local v12           #dataId:J
    :cond_13
    const-wide/16 v12, -0x1

    goto :goto_4

    .line 1781
    .end local v15           #dispalyNameMy:Ljava/lang/String;
    .end local v18           #entValues:Landroid/content/ContentValues;
    .end local v21           #entity:Landroid/content/Entity;
    .end local v22           #entityMy:Landroid/content/Entity;
    .end local v23           #entryValues:Landroid/content/ContentValues;
    .end local v24           #entryValuesMy:Landroid/content/ContentValues;
    .end local v27           #i$:Ljava/util/Iterator;
    .end local v34           #mimeTypeValues:Landroid/content/ContentValues;
    .end local v35           #mimetype:Ljava/lang/String;
    .end local v36           #mimetypeMy:Ljava/lang/String;
    .end local v41           #rawContactId:J
    .end local v45           #subValue:Landroid/content/Entity$NamedContentValues;
    .end local v46           #subValueMy:Landroid/content/Entity$NamedContentValues;
    :cond_14
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/contacts/ContactsUtility$3;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.android.contacts"

    move-object/from16 v0, v39

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v43

    .line 1782
    .local v43, results:[Landroid/content/ContentProviderResult;
    sget-boolean v2, Lcom/htc/util/contacts/ContactsUtility;->DEBUG:Z

    if-eqz v2, :cond_15

    const-string v2, "ContactsUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "importToMyContact results: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    :cond_15
    new-instance v28, Landroid/content/Intent;

    const-string v2, "com.htc.intent.action.MY_CONTACT_CHANGE"

    move-object/from16 v0, v28

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1784
    .local v28, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/contacts/ContactsUtility$3;->val$context:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1785
    .end local v28           #intent:Landroid/content/Intent;
    .end local v43           #results:[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v16

    .line 1786
    .local v16, e:Landroid/os/RemoteException;
    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 1787
    .end local v16           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v16

    .line 1788
    .local v16, e:Landroid/content/OperationApplicationException;
    invoke-virtual/range {v16 .. v16}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto/16 :goto_0
.end method

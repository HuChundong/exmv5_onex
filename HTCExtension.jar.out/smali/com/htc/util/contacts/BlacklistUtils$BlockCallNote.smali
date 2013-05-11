.class public Lcom/htc/util/contacts/BlacklistUtils$BlockCallNote;
.super Ljava/lang/Object;
.source "BlacklistUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/contacts/BlacklistUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockCallNote"
.end annotation


# static fields
.field public static final BLOCK_CALL_TOKEN:Ljava/lang/String; = "<BlockCall/>"

.field public static final HTC_DATA_ENDING_TOKEN:Ljava/lang/String; = "</HTCData>"

.field public static final HTC_DATA_STARTING_TOKEN:Ljava/lang/String; = "<HTCData>"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 537
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBlockNote(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "text"

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 544
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 546
    invoke-static {v7, v0}, Lcom/htc/util/contacts/BlacklistUtils$BlockCallNote;->appendBlockCall(ZLjava/lang/StringBuilder;)V

    .line 584
    :goto_0
    invoke-static {}, Lcom/htc/util/contacts/BlacklistUtils;->access$000()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "BlacklistUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addBlockCall: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 550
    :cond_1
    invoke-static {p0}, Lcom/htc/util/contacts/SNLinkUtils;->transferToNewFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 552
    const-string v5, "<HTCData>"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 553
    .local v3, startingIndex:I
    const-string v5, "</HTCData>"

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 554
    .local v1, endingIndex:I
    if-lt v1, v3, :cond_2

    if-eq v3, v6, :cond_2

    if-ne v1, v6, :cond_3

    .line 557
    :cond_2
    invoke-static {p0}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractNoteText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-static {v7, v0}, Lcom/htc/util/contacts/BlacklistUtils$BlockCallNote;->appendBlockCall(ZLjava/lang/StringBuilder;)V

    goto :goto_0

    .line 561
    :cond_3
    const-string v5, "<HTCData>"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 563
    .local v4, subText:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 566
    invoke-static {p0}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractNoteText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    invoke-static {v7, v0}, Lcom/htc/util/contacts/BlacklistUtils$BlockCallNote;->appendBlockCall(ZLjava/lang/StringBuilder;)V

    goto :goto_0

    .line 569
    :cond_4
    const-string v5, "<BlockCall/>"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 570
    .local v2, index_block:I
    if-ne v2, v6, :cond_5

    .line 572
    invoke-static {p0}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractNoteText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    const-string v5, "<HTCData>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    const/4 v5, 0x0

    invoke-static {v5, v0}, Lcom/htc/util/contacts/BlacklistUtils$BlockCallNote;->appendBlockCall(ZLjava/lang/StringBuilder;)V

    .line 575
    const-string v5, "<HTCData>"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 578
    :cond_5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private static appendBlockCall(ZLjava/lang/StringBuilder;)V
    .locals 1
    .parameter "addHeader"
    .parameter "text"

    .prologue
    .line 615
    if-eqz p0, :cond_0

    .line 616
    const-string v0, "<HTCData>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    :cond_0
    const-string v0, "<BlockCall/>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    if-eqz p0, :cond_1

    .line 620
    const-string v0, "</HTCData>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    :cond_1
    return-void
.end method

.method public static getBlockInformation(Landroid/content/Context;J)J
    .locals 11
    .parameter "context"
    .parameter "raw_contact_id"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 723
    if-eqz p0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 724
    :cond_0
    const-wide/16 v6, -0x1

    .line 753
    :cond_1
    :goto_0
    return-wide v6

    .line 727
    :cond_2
    const-wide/16 v6, -0x1

    .line 729
    .local v6, block:J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "mimetype"

    aput-object v3, v2, v10

    const-string v3, "data1"

    aput-object v3, v2, v4

    const-string v3, "account_type_and_data_set"

    aput-object v3, v2, v5

    const-string v3, "raw_contact_id =? "

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 732
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 734
    :cond_3
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 735
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/util/contacts/SNLinkUtils;->isSyncContacts(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 736
    const-wide/16 v6, 0x0

    .line 737
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/note"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 738
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 740
    .local v9, note:Ljava/lang/String;
    if-eqz v9, :cond_3

    invoke-static {v9}, Lcom/htc/util/contacts/BlacklistUtils$BlockCallNote;->removeBlockNote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 741
    const-wide/16 v6, 0x1

    .line 748
    .end local v9           #note:Ljava/lang/String;
    :cond_4
    if-eqz v8, :cond_1

    .line 749
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 748
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_5

    .line 749
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public static removeBlockNote(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "text"

    .prologue
    const/4 v5, -0x1

    .line 589
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 611
    .end local p0
    .local v0, endingIndex:I
    .local v1, startingIndex:I
    .local v2, subText:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 593
    .end local v0           #endingIndex:I
    .end local v1           #startingIndex:I
    .end local v2           #subText:Ljava/lang/String;
    .restart local p0
    :cond_1
    const-string v3, "<HTCData>"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 594
    .restart local v1       #startingIndex:I
    const-string v3, "</HTCData>"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 595
    .restart local v0       #endingIndex:I
    if-lt v0, v1, :cond_0

    if-eq v1, v5, :cond_0

    if-eq v0, v5, :cond_0

    .line 599
    const-string v3, "<HTCData>"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 600
    .restart local v2       #subText:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 601
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "<BlockCall/>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 603
    invoke-static {p0}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractNoteText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 604
    :cond_2
    const-string v3, "<BlockCall/>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_0

    .line 606
    const-string v3, "<BlockCall/>"

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static updateNoteForSyncContacts(Landroid/content/Context;JZLjava/util/ArrayList;)V
    .locals 19
    .parameter "context"
    .parameter "contact_id"
    .parameter "block"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JZ",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 626
    .local p4, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 627
    .local v15, rawList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-nez p4, :cond_0

    .line 628
    new-instance p4, Ljava/util/ArrayList;

    .end local p4           #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-direct/range {p4 .. p4}, Ljava/util/ArrayList;-><init>()V

    .line 630
    .restart local p4       #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_0
    const/4 v14, 0x0

    .line 632
    .local v14, operation:Landroid/content/ContentProviderOperation$Builder;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 633
    .local v7, builder:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_9

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_9

    .line 635
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const-string v4, "contact_id =?  AND (account_type = \'com.htc.android.pcsc\' OR account_type = \'com.google\' OR account_type = \'com.htc.android.mail.eas\' OR account_type = \'com.android.exchange\') AND raw_contact_is_read_only = 0 "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 642
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 643
    const-string v1, "raw_contact_id"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    const-string v1, " IN ("

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    :cond_1
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 646
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 647
    .local v11, id:I
    if-lez v11, :cond_1

    .line 648
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 649
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 650
    const-string v1, ","

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 653
    .end local v11           #id:I
    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 654
    const-string v1, ")"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 658
    :cond_3
    invoke-virtual {v15}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 659
    const-string v1, " AND "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "raw_contact_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "data1"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mimetype"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "vnd.android.cursor.item/note"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 666
    if-eqz v8, :cond_8

    .line 667
    :cond_4
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 668
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 669
    .local v16, raw_id:I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 670
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 671
    .local v13, note:Ljava/lang/String;
    const/4 v12, 0x0

    .line 672
    .local v12, newNote:Ljava/lang/String;
    if-eqz p3, :cond_5

    .line 673
    invoke-static {v13}, Lcom/htc/util/contacts/BlacklistUtils$BlockCallNote;->addBlockNote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 678
    :goto_2
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 679
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .line 680
    const-string v1, "_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 681
    invoke-virtual {v14}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 675
    :cond_5
    invoke-static {v13}, Lcom/htc/util/contacts/BlacklistUtils$BlockCallNote;->removeBlockNote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    .line 682
    :cond_6
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 683
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .line 684
    const-string v1, "data1"

    invoke-virtual {v14, v1, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 685
    const-string v1, "_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 686
    invoke-virtual {v14}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 689
    .end local v12           #newNote:Ljava/lang/String;
    .end local v13           #note:Ljava/lang/String;
    .end local v16           #raw_id:I
    :cond_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 693
    :cond_8
    if-eqz p3, :cond_9

    .line 694
    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 695
    .local v17, rid:I
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .line 696
    const-string v1, "raw_contact_id"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 697
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/note"

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 698
    const-string v1, "data1"

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/htc/util/contacts/BlacklistUtils$BlockCallNote;->addBlockNote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 699
    invoke-virtual {v14}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 708
    .end local v8           #c:Landroid/database/Cursor;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v17           #rid:I
    :cond_9
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 709
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.android.contacts"

    move-object/from16 v0, p4

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 710
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 719
    :cond_a
    :goto_4
    return-void

    .line 712
    :catch_0
    move-exception v9

    .line 713
    .local v9, e:Landroid/os/RemoteException;
    const-string v1, "BlacklistUtils"

    const-string v2, "%s: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v9}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v9}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 715
    .end local v9           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v9

    .line 716
    .local v9, e:Landroid/content/OperationApplicationException;
    const-string v1, "BlacklistUtils"

    const-string v2, "%s: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v9}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v9}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

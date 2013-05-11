.class public Lcom/htc/util/contacts/SNLinkUtils$OldMethod;
.super Ljava/lang/Object;
.source "SNLinkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/contacts/SNLinkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OldMethod"
.end annotation


# static fields
.field public static final LINK_DATA_ENDING_TOKEN:Ljava/lang/String; = "</sn>"

.field public static final LINK_DATA_STARTING_TOKEN:Ljava/lang/String; = "<sn>"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 377
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendLinkData(Ljava/lang/String;Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;)Ljava/lang/String;
    .locals 8
    .parameter "text"
    .parameter "data"

    .prologue
    .line 454
    if-nez p1, :cond_1

    .line 501
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 457
    .restart local p0
    :cond_1
    iget-object v6, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 461
    new-instance v5, Ljava/lang/StringBuffer;

    if-nez p0, :cond_2

    const-string v6, ""

    :goto_1
    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 462
    .local v5, textBuffer:Ljava/lang/StringBuffer;
    invoke-static {p0}, Lcom/htc/util/contacts/SNLinkUtils$OldMethod;->extractLinkData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 463
    .local v0, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    if-nez v0, :cond_3

    .line 465
    const-string v6, "<sn>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 466
    const-string v6, "id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 467
    iget-object v6, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 468
    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 469
    const-string v6, "friendof:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 470
    iget-object v6, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 471
    const-string v6, "</sn>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 472
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .end local v0           #dataList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    .end local v5           #textBuffer:Ljava/lang/StringBuffer;
    :cond_2
    move-object v6, p0

    .line 461
    goto :goto_1

    .line 474
    .restart local v0       #dataList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    .restart local v5       #textBuffer:Ljava/lang/StringBuffer;
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 475
    .local v1, dataListSize:I
    const/16 v6, 0x14

    if-le v1, v6, :cond_4

    .line 476
    invoke-static {}, Lcom/htc/util/contacts/SNLinkUtils;->access$000()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "SNLinkUtils"

    const-string v7, "link infomation exceed the limit so that don\'t add it."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 480
    :cond_4
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v1, :cond_6

    .line 481
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    .line 482
    .local v2, dataTmp:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    iget-object v6, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    iget-object v7, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    iget-object v7, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 480
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 489
    .end local v2           #dataTmp:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    :cond_6
    const/4 v3, 0x0

    .line 490
    .local v3, hasSameType:Z
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_7

    .line 491
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    .line 492
    .restart local v2       #dataTmp:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    iget-object v6, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    iget-object v7, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 493
    invoke-interface {v0, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 494
    const/4 v3, 0x1

    .line 498
    .end local v2           #dataTmp:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    :cond_7
    if-nez v3, :cond_8

    .line 499
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    :cond_8
    invoke-static {p0, v0}, Lcom/htc/util/contacts/SNLinkUtils$OldMethod;->setLinkData(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 490
    .restart local v2       #dataTmp:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method public static appendLinkData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"
    .parameter "userId"
    .parameter "friendOf"

    .prologue
    .line 512
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 518
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 515
    .restart local p0
    :cond_1
    new-instance v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    invoke-direct {v0}, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;-><init>()V

    .line 516
    .local v0, data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    iput-object p1, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    .line 517
    iput-object p2, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    .line 518
    invoke-static {p0, v0}, Lcom/htc/util/contacts/SNLinkUtils$OldMethod;->appendLinkData(Ljava/lang/String;Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static extractLinkData(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 418
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-object v1

    .line 421
    :cond_1
    const-string v8, "<sn>"

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 422
    .local v5, startingIndex:I
    const-string v8, "</sn>"

    invoke-virtual {p0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 423
    .local v2, endingIndex:I
    if-lt v2, v5, :cond_0

    if-eq v5, v9, :cond_0

    if-eq v2, v9, :cond_0

    .line 426
    const-string v8, "<sn>"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {p0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 427
    .local v6, subText:Ljava/lang/String;
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v8, "|"

    invoke-direct {v3, v6, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    .local v3, idListTokens:Ljava/util/StringTokenizer;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .local v1, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 430
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 431
    .local v7, token:Ljava/lang/String;
    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 432
    .local v4, ids:[Ljava/lang/String;
    array-length v8, v4

    const/4 v9, 0x2

    if-lt v8, v9, :cond_2

    .line 435
    aget-object v8, v4, v10

    const-string v9, "id:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    aget-object v8, v4, v11

    const-string v9, "friendof:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 437
    new-instance v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    invoke-direct {v0}, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;-><init>()V

    .line 438
    .local v0, data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    aget-object v8, v4, v10

    const-string v9, "id:"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    .line 439
    aget-object v8, v4, v11

    const-string v9, "friendof:"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    .line 440
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 444
    .end local v0           #data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    .end local v4           #ids:[Ljava/lang/String;
    .end local v7           #token:Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    .line 445
    goto :goto_0
.end method

.method public static extractNoteText(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "text"

    .prologue
    const/4 v5, -0x1

    .line 399
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 409
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 402
    .restart local p0
    :cond_1
    const-string v4, "<sn>"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 403
    .local v1, startingIndex:I
    const-string v4, "</sn>"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 404
    .local v0, endingIndex:I
    if-lt v0, v1, :cond_0

    if-eq v1, v5, :cond_0

    if-eq v0, v5, :cond_0

    .line 407
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 408
    .local v2, subTextFirstHalf:Ljava/lang/String;
    const-string v4, "</sn>"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 409
    .local v3, subTextSecondHalf:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static removeLinkData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "text"
    .parameter "userId"
    .parameter "friendOf"

    .prologue
    .line 565
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 583
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 568
    .restart local p0
    :cond_1
    invoke-static {p0}, Lcom/htc/util/contacts/SNLinkUtils$OldMethod;->extractLinkData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 569
    .local v1, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    if-eqz v1, :cond_0

    .line 573
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 575
    .local v2, dataListSize:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 576
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    .line 578
    .local v0, data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    iget-object v4, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 579
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 583
    .end local v0           #data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    :cond_2
    invoke-static {p0, v1}, Lcom/htc/util/contacts/SNLinkUtils$OldMethod;->setLinkData(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 575
    .restart local v0       #data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private static setLinkData(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .parameter "text"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    const/16 v9, 0x7c

    const/4 v8, -0x1

    .line 522
    const-string v7, "<sn>"

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 523
    .local v6, startingIndex:I
    const-string v7, "</sn>"

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 524
    .local v4, endingIndex:I
    if-lt v4, v6, :cond_0

    if-eq v6, v8, :cond_0

    if-ne v4, v8, :cond_1

    .line 556
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 528
    .restart local p0
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-static {p0}, Lcom/htc/util/contacts/SNLinkUtils$OldMethod;->extractNoteText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 530
    .local v0, bufferText:Ljava/lang/StringBuffer;
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 531
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 532
    .local v2, dataListSize:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 534
    .local v3, dataStringBuilder:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v2, :cond_2

    .line 535
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    .line 536
    .local v1, data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    const-string v7, "id:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    iget-object v7, v1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    const/16 v7, 0x2f

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 539
    const-string v7, "friendof:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    iget-object v7, v1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 534
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 543
    .end local v1           #data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_3

    .line 544
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 546
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 547
    const/4 v7, 0x0

    const-string v8, "<sn>"

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    const-string v7, "</sn>"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 556
    .end local v2           #dataListSize:I
    .end local v3           #dataStringBuilder:Ljava/lang/StringBuilder;
    .end local v5           #i:I
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

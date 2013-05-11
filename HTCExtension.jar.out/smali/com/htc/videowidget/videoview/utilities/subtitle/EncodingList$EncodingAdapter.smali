.class public Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$EncodingAdapter;
.super Landroid/widget/BaseAdapter;
.source "EncodingList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EncodingAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;


# direct methods
.method public constructor <init>(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 331
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$EncodingAdapter;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    .line 332
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 333
    iput-object p2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$EncodingAdapter;->mContext:Landroid/content/Context;

    .line 334
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$EncodingAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$EncodingAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 336
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$EncodingAdapter;->loadListItemResource()V

    .line 337
    return-void
.end method

.method private loadListItemResource()V
    .locals 12

    .prologue
    const/16 v11, 0x25

    const/4 v10, 0x1

    .line 341
    const/4 v3, 0x0

    .line 342
    .local v3, i:I
    iget-object v7, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$EncodingAdapter;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mEncodingCharset:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->access$600(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)Ljava/lang/String;

    move-result-object v5

    .line 343
    .local v5, sCharset:Ljava/lang/String;
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->access$300()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[loadListItemResource] Encoding Start Charset:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$EncodingAdapter;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mEncodingCharset:Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->access$600(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    .line 345
    .local v6, tmpCharset:Ljava/nio/charset/Charset;
    new-array v1, v11, [Ljava/lang/String;

    .line 346
    .local v1, encodingList:[Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$EncodingAdapter;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    new-array v8, v11, [Ljava/lang/String;

    #setter for: Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mFirstSubtitleList:[Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->access$702(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;[Ljava/lang/String;)[Ljava/lang/String;

    .line 347
    new-instance v4, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    iget-object v7, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$EncodingAdapter;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$EncodingAdapter;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mSubtitlePath:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->access$800(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 348
    .local v4, parse:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;
    const/4 v0, 0x0

    .line 349
    .local v0, allSubtitle:Ljava/lang/String;
    const/4 v2, 0x0

    .line 351
    .local v2, firstSubtitleText:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    if-eqz v5, :cond_0

    const-string v7, ""

    if-ne v5, v7, :cond_1

    .line 353
    :cond_0
    iget-object v7, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$EncodingAdapter;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    sget-object v8, Lcom/htc/videowidget/common/Constants;->CHARSET_UNICODE:Ljava/lang/String;

    #setter for: Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mEncodingCharset:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->access$602(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;Ljava/lang/String;)Ljava/lang/String;

    .line 355
    :cond_1
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->access$300()Ljava/lang/String;

    move-result-object v7

    const-string v8, "start parse all subtitle"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v11, :cond_2

    .line 358
    iget-object v7, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$EncodingAdapter;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->isDestroyed:Z
    invoke-static {v7}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->access$100(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 360
    invoke-virtual {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->clearSubtitle()V

    .line 394
    :cond_2
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->access$300()Ljava/lang/String;

    move-result-object v7

    const-string v8, "end parse all subtitle"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return-void

    .line 363
    :cond_3
    iget-object v7, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$EncodingAdapter;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->charsetMap:[[Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->access$500(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)[[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v3

    aget-object v7, v7, v10

    aput-object v7, v1, v3

    .line 365
    aget-object v7, v1, v3

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    .line 367
    iget-object v7, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$EncodingAdapter;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    iget-object v7, v7, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mByteArray:[B

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$EncodingAdapter;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    iget-object v7, v7, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mByteArray:[B

    array-length v7, v7

    if-lez v7, :cond_5

    iget-object v7, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$EncodingAdapter;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mSubtitlePath:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->access$800(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 369
    new-instance v0, Ljava/lang/String;

    .end local v0           #allSubtitle:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$EncodingAdapter;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    iget-object v7, v7, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mByteArray:[B

    invoke-direct {v0, v7, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 370
    .restart local v0       #allSubtitle:Ljava/lang/String;
    invoke-virtual {v4, v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->setSubtitleFile(Ljava/lang/String;)V

    .line 371
    iget-object v7, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$EncodingAdapter;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mSubtitlePath:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->access$800(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".*srt"

    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 373
    invoke-virtual {v4, v10}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->parseSRTSubtitle(Z)V

    .line 379
    :cond_4
    :goto_1
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->getSubtitle(I)Ljava/lang/String;

    move-result-object v2

    .line 382
    :cond_5
    if-eqz v2, :cond_a

    .line 383
    iget-object v7, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$EncodingAdapter;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mFirstSubtitleList:[Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->access$700(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)[Ljava/lang/String;

    move-result-object v7

    aput-object v2, v7, v3

    .line 387
    :goto_2
    iget-object v7, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$EncodingAdapter;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->isDebug:Z
    invoke-static {v7}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->access$900(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 388
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->access$300()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$EncodingAdapter;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mFirstSubtitleList:[Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->access$700(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v3

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_6
    aget-object v7, v1, v3

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 391
    iget-object v7, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$EncodingAdapter;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    #setter for: Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mSelEncodingIndex:I
    invoke-static {v7, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->access$402(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;I)I

    .line 392
    :cond_7
    invoke-virtual {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->clearSubtitle()V

    .line 356
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 375
    :cond_8
    iget-object v7, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$EncodingAdapter;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mSubtitlePath:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->access$800(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".sami"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$EncodingAdapter;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mSubtitlePath:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->access$800(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".smi"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 377
    :cond_9
    invoke-virtual {v4, v10}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->parseSMISubtitle(Z)V

    goto :goto_1

    .line 385
    :cond_a
    iget-object v7, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$EncodingAdapter;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mFirstSubtitleList:[Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->access$700(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)[Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    aput-object v8, v7, v3

    goto :goto_2
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$EncodingAdapter;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->charsetMap:[[Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->access$500(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)[[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$EncodingAdapter;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->charsetMap:[[Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->access$500(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)[[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    .line 403
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$EncodingAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$EncodingAdapter;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->charsetMap:[[Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->access$500(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)[[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 412
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 418
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 426
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$EncodingAdapter;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    invoke-virtual {v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v2

    .line 428
    .local v2, res:Landroid/content/res/Resources;
    if-nez p2, :cond_0

    .line 429
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$EncodingAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x6030008

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 431
    :cond_0
    const v3, 0x60b0028

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    .line 432
    .local v1, menuText:Lcom/htc/widget/HtcListItem2LineText;
    const v3, 0x60b0029

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcRadioButton;

    .line 434
    .local v0, menuRadio:Lcom/htc/widget/HtcRadioButton;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$EncodingAdapter;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->charsetMap:[[Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->access$500(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)[[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, p1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$EncodingAdapter;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->charsetMap:[[Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->access$500(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)[[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, p1

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 435
    const v3, 0x2030038

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 436
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$EncodingAdapter;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mFirstSubtitleList:[Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->access$700(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 437
    const v3, 0x2030042

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextStyle(I)V

    .line 438
    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcRadioButton;->setFocusable(Z)V

    .line 439
    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcRadioButton;->setClickable(Z)V

    .line 441
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$EncodingAdapter;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mSelEncodingIndex:I
    invoke-static {v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->access$400(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)I

    move-result v3

    if-ne p1, v3, :cond_1

    .line 442
    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcRadioButton;->setChecked(Z)V

    .line 446
    :goto_0
    return-object p2

    .line 444
    :cond_1
    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcRadioButton;->setChecked(Z)V

    goto :goto_0
.end method

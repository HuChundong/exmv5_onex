.class public Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$SubtitleMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "SubtitleMenuList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SubtitleMenuAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mIsCloseCaption:Z

.field private mSubtitleList:[Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;


# direct methods
.method public constructor <init>(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;Landroid/content/Context;[Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "subtitleList"

    .prologue
    .line 261
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$SubtitleMenuAdapter;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;

    .line 262
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$SubtitleMenuAdapter;->mIsCloseCaption:Z

    .line 263
    iput-object p2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$SubtitleMenuAdapter;->mContext:Landroid/content/Context;

    .line 264
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$SubtitleMenuAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$SubtitleMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 267
    invoke-direct {p0, p3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$SubtitleMenuAdapter;->loadListItemResource([Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public constructor <init>(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;Landroid/content/Context;[Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "subtitleList"
    .parameter "isCloseCaption"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$SubtitleMenuAdapter;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;

    .line 271
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$SubtitleMenuAdapter;->mIsCloseCaption:Z

    .line 272
    iput-object p2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$SubtitleMenuAdapter;->mContext:Landroid/content/Context;

    .line 273
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$SubtitleMenuAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$SubtitleMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 274
    iput-boolean p4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$SubtitleMenuAdapter;->mIsCloseCaption:Z

    .line 276
    invoke-direct {p0, p3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$SubtitleMenuAdapter;->loadListItemResource([Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method private loadListItemResource([Ljava/lang/String;)V
    .locals 8
    .parameter "subtitleList"

    .prologue
    .line 281
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$SubtitleMenuAdapter;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;

    invoke-virtual {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v1

    .line 284
    .local v1, res:Landroid/content/res/Resources;
    if-nez p1, :cond_0

    .line 285
    const/4 v3, 0x0

    .line 289
    .local v3, subtitleListLength:I
    :goto_0
    add-int/lit8 v4, v3, 0x2

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$SubtitleMenuAdapter;->mSubtitleList:[Ljava/lang/String;

    .line 291
    iget-boolean v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$SubtitleMenuAdapter;->mIsCloseCaption:Z

    if-eqz v4, :cond_1

    const v2, 0x6090023

    .line 292
    .local v2, stringId:I
    :goto_1
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$SubtitleMenuAdapter;->mSubtitleList:[Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$SubtitleMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 294
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$SubtitleMenuAdapter;->mSubtitleList:[Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$SubtitleMenuAdapter;->mSubtitleList:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$SubtitleMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x6090024

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 296
    if-eqz v3, :cond_2

    .line 298
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v3, :cond_2

    .line 300
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$SubtitleMenuAdapter;->mSubtitleList:[Ljava/lang/String;

    add-int/lit8 v5, v0, 0x1

    aget-object v6, p1, v0

    aput-object v6, v4, v5

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 287
    .end local v0           #i:I
    .end local v2           #stringId:I
    .end local v3           #subtitleListLength:I
    :cond_0
    array-length v3, p1

    .restart local v3       #subtitleListLength:I
    goto :goto_0

    .line 291
    :cond_1
    const v2, 0x6090022

    goto :goto_1

    .line 303
    .restart local v2       #stringId:I
    :cond_2
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$SubtitleMenuAdapter;->mSubtitleList:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$SubtitleMenuAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$SubtitleMenuAdapter;->mSubtitleList:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 317
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
    .line 323
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v8, 0x2030038

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 340
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$SubtitleMenuAdapter;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;

    invoke-virtual {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v2

    .line 342
    .local v2, res:Landroid/content/res/Resources;
    if-nez p2, :cond_0

    .line 343
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$SubtitleMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x6030010

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 345
    :cond_0
    const v4, 0x60b003e

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    .line 346
    .local v1, menuText:Lcom/htc/widget/HtcListItem2LineText;
    const v4, 0x60b0029

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcRadioButton;

    .line 348
    .local v0, menuRadio:Lcom/htc/widget/HtcRadioButton;
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$SubtitleMenuAdapter;->mSubtitleList:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v1, v8}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 350
    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcRadioButton;->setVisibility(I)V

    .line 351
    invoke-virtual {v1, v7}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 352
    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcRadioButton;->setFocusable(Z)V

    .line 353
    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcRadioButton;->setClickable(Z)V

    .line 355
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$SubtitleMenuAdapter;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mSelSubtitleIndex:I
    invoke-static {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->access$000(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;)I

    move-result v4

    if-ne p1, v4, :cond_2

    .line 356
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcRadioButton;->setChecked(Z)V

    .line 360
    :goto_0
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$SubtitleMenuAdapter;->mSubtitleList:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_1

    .line 362
    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 363
    invoke-virtual {v1, v8}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 364
    const v4, 0x2030042

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextStyle(I)V

    .line 365
    iget-boolean v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$SubtitleMenuAdapter;->mIsCloseCaption:Z

    if-eqz v4, :cond_3

    const v3, 0x6090026

    .line 366
    .local v3, stringId:I
    :goto_1
    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(I)V

    .line 367
    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcRadioButton;->setVisibility(I)V

    .line 370
    .end local v3           #stringId:I
    :cond_1
    return-object p2

    .line 358
    :cond_2
    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcRadioButton;->setChecked(Z)V

    goto :goto_0

    .line 365
    :cond_3
    const v3, 0x6090025

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$SubtitleMenuAdapter;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mPrevSubtitleIndex:I
    invoke-static {v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->access$600(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$SubtitleMenuAdapter;->mSubtitleList:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 330
    const/4 v0, 0x0

    .line 332
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

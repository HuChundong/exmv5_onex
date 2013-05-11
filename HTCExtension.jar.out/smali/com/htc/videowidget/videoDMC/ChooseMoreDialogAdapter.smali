.class public Lcom/htc/videowidget/videoDMC/ChooseMoreDialogAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChooseMoreDialogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/videowidget/videoDMC/ChooseMoreDialogAdapter$MoreMenu;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private applicationName:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/htc/videowidget/videoDMC/ChooseMoreDialogAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/videowidget/videoDMC/ChooseMoreDialogAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/htc/videowidget/videoDMC/ChooseMoreDialogAdapter;->mContext:Landroid/content/Context;

    .line 33
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/ChooseMoreDialogAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/videowidget/videoDMC/ChooseMoreDialogAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 36
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoDMC/ChooseMoreDialogAdapter;->loadListItemResource(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method private loadListItemResource(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 41
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/ChooseMoreDialogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    .line 42
    .local v0, res:Landroid/content/res/Resources;
    if-nez v0, :cond_0

    .line 44
    sget-object v1, Lcom/htc/videowidget/videoDMC/ChooseMoreDialogAdapter;->TAG:Ljava/lang/String;

    const-string v2, "[loadListItemResource] mRes is null"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :goto_0
    return-void

    .line 48
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x2040286

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x6090009

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/ChooseMoreDialogAdapter;->applicationName:[Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/ChooseMoreDialogAdapter;->applicationName:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/ChooseMoreDialogAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/ChooseMoreDialogAdapter;->applicationName:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 63
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
    .line 68
    int-to-long v0, p1

    return-wide v0
.end method

.method public getMoreItems()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/ChooseMoreDialogAdapter;->applicationName:[Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 76
    iget-object v3, p0, Lcom/htc/videowidget/videoDMC/ChooseMoreDialogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v1

    .line 77
    .local v1, res:Landroid/content/res/Resources;
    if-nez v1, :cond_0

    .line 79
    sget-object v3, Lcom/htc/videowidget/videoDMC/ChooseMoreDialogAdapter;->TAG:Ljava/lang/String;

    const-string v4, "[getView] mRes is null"

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :goto_0
    return-object v2

    .line 83
    :cond_0
    if-nez p2, :cond_1

    .line 85
    iget-object v3, p0, Lcom/htc/videowidget/videoDMC/ChooseMoreDialogAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x603000b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 86
    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    :cond_1
    const v2, 0x60b0036

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem2LineText;

    .line 91
    .local v0, menuText:Lcom/htc/widget/HtcListItem2LineText;
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/ChooseMoreDialogAdapter;->applicationName:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 92
    const v2, 0x2030016

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 93
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    move-object v2, p2

    .line 96
    goto :goto_0
.end method

.method public refreshItemResource(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 101
    iget-object v6, p0, Lcom/htc/videowidget/videoDMC/ChooseMoreDialogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v3

    .line 102
    .local v3, res:Landroid/content/res/Resources;
    if-nez v3, :cond_1

    .line 104
    sget-object v6, Lcom/htc/videowidget/videoDMC/ChooseMoreDialogAdapter;->TAG:Ljava/lang/String;

    const-string v7, "[refreshItemResource] mRes is null"

    invoke-static {v6, v7}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_0
    return-void

    .line 108
    :cond_1
    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const v7, 0x2040286

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const v7, 0x6090009

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 112
    .local v4, tempApplicationName:[Ljava/lang/String;
    array-length v1, v4

    .line 113
    .local v1, index:I
    move v5, v1

    .line 115
    .local v5, tempIndex:I
    new-array v6, v5, [Ljava/lang/String;

    iput-object v6, p0, Lcom/htc/videowidget/videoDMC/ChooseMoreDialogAdapter;->applicationName:[Ljava/lang/String;

    .line 117
    const/4 v0, 0x0

    .local v0, i:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 119
    aget-object v6, v4, v2

    if-eqz v6, :cond_2

    .line 121
    iget-object v6, p0, Lcom/htc/videowidget/videoDMC/ChooseMoreDialogAdapter;->applicationName:[Ljava/lang/String;

    aget-object v7, v4, v2

    aput-object v7, v6, v0

    .line 123
    add-int/lit8 v0, v0, 0x1

    .line 117
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

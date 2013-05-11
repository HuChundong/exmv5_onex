.class public Lcom/htc/videowidget/videoDMC/DetailsAdapter;
.super Landroid/widget/BaseAdapter;
.source "DetailsAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListPrimaryText:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListSecondaryText:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/htc/videowidget/videoDMC/DetailsAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/videowidget/videoDMC/DetailsAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .parameter "_context"
    .parameter "_resource"
    .parameter "strPathName"
    .parameter "strFileName"
    .parameter "strModifiedDate"
    .parameter "strFileSize"
    .parameter "strDuration"
    .parameter "strType"
    .parameter "strStatus"
    .parameter "drawable"

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/htc/videowidget/videoDMC/DetailsAdapter;->mListPrimaryText:Ljava/util/ArrayList;

    .line 29
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/htc/videowidget/videoDMC/DetailsAdapter;->mListSecondaryText:Ljava/util/ArrayList;

    .line 30
    iput-object v3, p0, Lcom/htc/videowidget/videoDMC/DetailsAdapter;->mContext:Landroid/content/Context;

    .line 31
    iput-object v3, p0, Lcom/htc/videowidget/videoDMC/DetailsAdapter;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/videowidget/videoDMC/DetailsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 37
    iput-object p1, p0, Lcom/htc/videowidget/videoDMC/DetailsAdapter;->mContext:Landroid/content/Context;

    .line 38
    iput-object p10, p0, Lcom/htc/videowidget/videoDMC/DetailsAdapter;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 40
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DetailsAdapter;->mListPrimaryText:Ljava/util/ArrayList;

    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DetailsAdapter;->mListSecondaryText:Ljava/util/ArrayList;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DetailsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v1

    .line 44
    .local v1, res:Landroid/content/res/Resources;
    if-nez v1, :cond_1

    .line 46
    sget-object v2, Lcom/htc/videowidget/videoDMC/DetailsAdapter;->TAG:Ljava/lang/String;

    const-string v3, "[DetailsAdapter] res is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    const v2, 0x609000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, msg:Ljava/lang/String;
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 54
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DetailsAdapter;->mListPrimaryText:Ljava/util/ArrayList;

    const v3, 0x6090014

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DetailsAdapter;->mListSecondaryText:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_2
    if-eqz p5, :cond_3

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 59
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DetailsAdapter;->mListPrimaryText:Ljava/util/ArrayList;

    const v3, 0x6090015

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DetailsAdapter;->mListSecondaryText:Ljava/util/ArrayList;

    invoke-virtual {v2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_3
    if-eqz p6, :cond_4

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 64
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DetailsAdapter;->mListPrimaryText:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/videowidget/videoDMC/DetailsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2040367

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DetailsAdapter;->mListSecondaryText:Ljava/util/ArrayList;

    invoke-virtual {v2, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_4
    if-eqz p7, :cond_5

    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 69
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DetailsAdapter;->mListPrimaryText:Ljava/util/ArrayList;

    const v3, 0x6090016

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DetailsAdapter;->mListSecondaryText:Ljava/util/ArrayList;

    invoke-virtual {v2, p7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_5
    if-eqz p8, :cond_6

    invoke-virtual {p8}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 74
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DetailsAdapter;->mListPrimaryText:Ljava/util/ArrayList;

    const v3, 0x6090017

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DetailsAdapter;->mListSecondaryText:Ljava/util/ArrayList;

    invoke-virtual {v2, p8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_6
    if-eqz p9, :cond_0

    invoke-virtual {p9}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DetailsAdapter;->mListPrimaryText:Ljava/util/ArrayList;

    const v3, 0x6090018

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DetailsAdapter;->mListSecondaryText:Ljava/util/ArrayList;

    invoke-virtual {v2, p9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, count:I
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DetailsAdapter;->mListPrimaryText:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DetailsAdapter;->mListPrimaryText:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 150
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DetailsAdapter;->mListPrimaryText:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DetailsAdapter;->mListPrimaryText:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

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
    .line 169
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v10, 0x2030038

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 87
    sget-object v5, Lcom/htc/videowidget/videoDMC/DetailsAdapter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-- getView, position: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " +++"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v5, p0, Lcom/htc/videowidget/videoDMC/DetailsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v3

    .line 90
    .local v3, res:Landroid/content/res/Resources;
    if-nez v3, :cond_0

    .line 92
    sget-object v5, Lcom/htc/videowidget/videoDMC/DetailsAdapter;->TAG:Ljava/lang/String;

    const-string v6, "[getView] res is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v5, 0x0

    .line 139
    :goto_0
    return-object v5

    .line 99
    :cond_0
    if-nez p2, :cond_1

    .line 101
    iget-object v5, p0, Lcom/htc/videowidget/videoDMC/DetailsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x6030004

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    invoke-virtual {v5, v6, p3, v8}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 104
    :cond_1
    const v5, 0x60b000b

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemColorIcon;

    .line 105
    .local v1, htcListItemColorIcon:Lcom/htc/widget/HtcListItemColorIcon;
    const v5, 0x60b000c

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem2LineText;

    .line 108
    .local v0, htcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;
    iget-object v5, p0, Lcom/htc/videowidget/videoDMC/DetailsAdapter;->mListPrimaryText:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 110
    if-nez p1, :cond_3

    .line 112
    iget-object v5, p0, Lcom/htc/videowidget/videoDMC/DetailsAdapter;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    invoke-virtual {v1, v8}, Lcom/htc/widget/HtcListItemColorIcon;->setVisibility(I)V

    .line 115
    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 116
    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    :cond_2
    :goto_1
    move-object v5, p2

    .line 139
    goto :goto_0

    .line 120
    :cond_3
    invoke-virtual {v1, v9}, Lcom/htc/widget/HtcListItemColorIcon;->setVisibility(I)V

    .line 121
    iget-object v5, p0, Lcom/htc/videowidget/videoDMC/DetailsAdapter;->mListSecondaryText:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0}, Lcom/htc/widget/HtcListItem2LineText;->getPrimaryTextView()Landroid/widget/TextView;

    move-result-object v2

    .line 125
    .local v2, primaryText:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/htc/widget/HtcListItem2LineText;->getSecondaryTextView()Landroid/widget/TextView;

    move-result-object v4

    .line 126
    .local v4, secondaryText:Landroid/widget/TextView;
    if-eqz v2, :cond_2

    if-eqz v4, :cond_2

    .line 132
    iget-object v5, p0, Lcom/htc/videowidget/videoDMC/DetailsAdapter;->mContext:Landroid/content/Context;

    const v6, 0x2030042

    invoke-virtual {v2, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 133
    iget-object v5, p0, Lcom/htc/videowidget/videoDMC/DetailsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 162
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 163
    return-void
.end method

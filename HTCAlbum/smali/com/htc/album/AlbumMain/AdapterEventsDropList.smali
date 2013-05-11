.class public Lcom/htc/album/AlbumMain/AdapterEventsDropList;
.super Landroid/widget/BaseAdapter;
.source "AdapterEventsDropList.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsCarMode:Z

.field private mIsPrepared:Z

.field private mList:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "isCarMode"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mContext:Landroid/content/Context;

    .line 23
    iput-object v0, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mInflater:Landroid/view/LayoutInflater;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mList:Ljava/util/List;

    .line 25
    iput-boolean v1, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mIsPrepared:Z

    .line 26
    iput-boolean v1, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mIsCarMode:Z

    .line 29
    iput-object p1, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mContext:Landroid/content/Context;

    .line 30
    iput-boolean p2, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mIsCarMode:Z

    .line 31
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "nIndex"

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 68
    .local v0, object:Ljava/lang/Object;
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 71
    .end local v0           #object:Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 70
    .restart local v0       #object:Ljava/lang/Object;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 77
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "pos"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 84
    if-nez p2, :cond_0

    .line 86
    iget-object v3, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030025

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    move-object v0, p2

    .line 87
    check-cast v0, Lcom/htc/widget/HtcListItem;

    .line 89
    .local v0, item:Lcom/htc/widget/HtcListItem;
    iget-boolean v3, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mIsCarMode:Z

    if-eqz v3, :cond_3

    .line 91
    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListItem;->setAutoMotiveMode(Z)V

    .line 92
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    .end local v0           #item:Lcom/htc/widget/HtcListItem;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 100
    .local v1, listItemContent:Lcom/htc/widget/HtcListItem2LineText;
    const/4 v2, 0x0

    .line 101
    .local v2, listItemImage:Lcom/htc/widget/HtcListItemColorIcon;
    iget-object v3, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 102
    .local v0, item:I
    if-eqz p2, :cond_2

    .line 104
    const v3, 0x7f09004a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #listItemImage:Lcom/htc/widget/HtcListItemColorIcon;
    check-cast v2, Lcom/htc/widget/HtcListItemColorIcon;

    .line 105
    .restart local v2       #listItemImage:Lcom/htc/widget/HtcListItemColorIcon;
    if-eqz v2, :cond_1

    .line 106
    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcListItemColorIcon;->setVisibility(I)V

    .line 107
    :cond_1
    const v3, 0x7f090029

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #listItemContent:Lcom/htc/widget/HtcListItem2LineText;
    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    .line 108
    .restart local v1       #listItemContent:Lcom/htc/widget/HtcListItem2LineText;
    if-eqz v1, :cond_2

    .line 111
    invoke-virtual {v1, v7}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 113
    iget-boolean v3, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mIsCarMode:Z

    if-eqz v3, :cond_4

    .line 115
    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcListItem2LineText;->setAutoMotiveMode(Z)V

    .line 116
    const v3, 0x203007e

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 122
    :goto_1
    const/16 v3, 0x37

    if-ne v3, v0, :cond_5

    .line 123
    const v3, 0x7f0a003b

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 129
    :cond_2
    :goto_2
    return-object p2

    .line 96
    .end local v1           #listItemContent:Lcom/htc/widget/HtcListItem2LineText;
    .end local v2           #listItemImage:Lcom/htc/widget/HtcListItemColorIcon;
    .local v0, item:Lcom/htc/widget/HtcListItem;
    :cond_3
    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcListItem;->setBackgroundResource(I)V

    goto :goto_0

    .line 119
    .local v0, item:I
    .restart local v1       #listItemContent:Lcom/htc/widget/HtcListItem2LineText;
    .restart local v2       #listItemImage:Lcom/htc/widget/HtcListItemColorIcon;
    :cond_4
    const v3, 0x2030016

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    goto :goto_1

    .line 124
    :cond_5
    const/16 v3, 0x38

    if-ne v3, v0, :cond_2

    .line 125
    const v3, 0x7f0a0184

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    goto :goto_2
.end method

.method public isPrepared()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mIsPrepared:Z

    return v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mInflater:Landroid/view/LayoutInflater;

    .line 47
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mInflater:Landroid/view/LayoutInflater;

    .line 51
    iput-object v0, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mContext:Landroid/content/Context;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mIsPrepared:Z

    .line 53
    iget-object v0, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 54
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->notifyDataSetChanged()V

    .line 55
    return-void
.end method

.method public onPrepareDropList()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 39
    iget-object v0, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mList:Ljava/util/List;

    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mList:Ljava/util/List;

    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->notifyDataSetChanged()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mIsPrepared:Z

    .line 43
    return-void
.end method

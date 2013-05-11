.class public Lcom/htc/album/AlbumMain/AdapterDropList;
.super Landroid/widget/BaseAdapter;
.source "AdapterDropList.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field protected mList:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mContext:Landroid/content/Context;

    .line 28
    iput-object v0, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mInflater:Landroid/view/LayoutInflater;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mList:Ljava/util/List;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mContext:Landroid/content/Context;

    .line 28
    iput-object v0, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mInflater:Landroid/view/LayoutInflater;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mList:Ljava/util/List;

    .line 37
    iput-object p1, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "nIndex"

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 73
    .local v0, object:Ljava/lang/Object;
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 76
    .end local v0           #object:Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 75
    .restart local v0       #object:Ljava/lang/Object;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 82
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "pos"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 89
    if-nez p2, :cond_0

    .line 91
    iget-object v9, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f030025

    const/4 v11, 0x0

    invoke-virtual {v9, v10, p3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    move-object v2, p2

    .line 92
    check-cast v2, Lcom/htc/widget/HtcListItem;

    .line 93
    .local v2, item:Lcom/htc/widget/HtcListItem;
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/htc/widget/HtcListItem;->setBackgroundResource(I)V

    .line 95
    .end local v2           #item:Lcom/htc/widget/HtcListItem;
    :cond_0
    const/4 v3, 0x0

    .line 96
    .local v3, listItemContent:Lcom/htc/widget/HtcListItem2LineText;
    const/4 v4, 0x0

    .line 97
    .local v4, listItemImage:Lcom/htc/widget/HtcListItemColorIcon;
    iget-object v9, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mList:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/opensense/plugin/TabPlugin;

    .line 98
    .local v7, plugin:Lcom/htc/opensense/plugin/TabPlugin;
    if-eqz p2, :cond_4

    .line 100
    const v9, 0x7f09004a

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #listItemImage:Lcom/htc/widget/HtcListItemColorIcon;
    check-cast v4, Lcom/htc/widget/HtcListItemColorIcon;

    .line 101
    .restart local v4       #listItemImage:Lcom/htc/widget/HtcListItemColorIcon;
    if-eqz v4, :cond_3

    .line 103
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/htc/widget/HtcListItemColorIcon;->setVisibility(I)V

    .line 104
    const/4 v8, 0x0

    .line 105
    .local v8, rplugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    const/4 v6, 0x0

    .line 106
    .local v6, osDataPlugin:Z
    instance-of v9, v7, Lcom/htc/opensense/plugin/TabPluginRemote;

    if-eqz v9, :cond_1

    move-object v8, v7

    check-cast v8, Lcom/htc/opensense/plugin/TabPluginRemote;

    .line 107
    :cond_1
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/htc/opensense/plugin/TabPluginRemote;->onCreateAlbumListPlugin()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 108
    const/4 v6, 0x1

    .line 110
    :cond_2
    if-eqz v6, :cond_6

    .line 112
    invoke-virtual {v8}, Lcom/htc/opensense/plugin/TabPluginRemote;->getLogoRes()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 113
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-nez v0, :cond_5

    .line 114
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    .line 140
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v6           #osDataPlugin:Z
    .end local v8           #rplugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    :cond_3
    :goto_0
    const v9, 0x7f090029

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #listItemContent:Lcom/htc/widget/HtcListItem2LineText;
    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    .line 141
    .restart local v3       #listItemContent:Lcom/htc/widget/HtcListItem2LineText;
    if-eqz v3, :cond_4

    .line 143
    const v9, 0x2030016

    invoke-virtual {v3, v9}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 144
    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 145
    const-string v9, "HtcDummy"

    invoke-virtual {v7}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 146
    const v9, 0x7f0a0153

    invoke-virtual {v3, v9}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 152
    :cond_4
    :goto_1
    return-object p2

    .line 116
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v6       #osDataPlugin:Z
    .restart local v8       #rplugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    :cond_5
    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 120
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_6
    const-string v9, "HtcDummy"

    invoke-virtual {v7}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 122
    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Lcom/htc/widget/HtcListItemColorIcon;->setVisibility(I)V

    goto :goto_0

    .line 126
    :cond_7
    const/4 v5, 0x0

    .line 129
    .local v5, nResDrawable:I
    :try_start_0
    invoke-virtual {v7}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableResSet()[I

    move-result-object v9

    const/4 v10, 0x1

    aget v5, v9, v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_2
    if-eqz v5, :cond_3

    .line 136
    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    goto :goto_0

    .line 131
    :catch_0
    move-exception v1

    .line 133
    .local v1, e:Ljava/lang/Exception;
    const/4 v5, 0x0

    goto :goto_2

    .line 148
    .end local v1           #e:Ljava/lang/Exception;
    .end local v5           #nResDrawable:I
    .end local v6           #osDataPlugin:Z
    .end local v8           #rplugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    :cond_8
    invoke-virtual {v7}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mInflater:Landroid/view/LayoutInflater;

    .line 55
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mInflater:Landroid/view/LayoutInflater;

    .line 59
    iput-object v0, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method

.method public setAdapterList(Ljava/util/List;Z)V
    .locals 3
    .parameter
    .parameter "bIsSynced"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/TabPlugin;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, plugins:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/plugin/TabPlugin;>;"
    iget-object v0, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 42
    iget-object v0, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 43
    if-nez p2, :cond_0

    .line 45
    iget-object v0, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mList:Ljava/util/List;

    new-instance v1, Lcom/htc/album/AlbumMain/TabPluginDummy;

    iget-object v2, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/album/AlbumMain/TabPluginDummy;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/AdapterDropList;->notifyDataSetChanged()V

    goto :goto_0
.end method

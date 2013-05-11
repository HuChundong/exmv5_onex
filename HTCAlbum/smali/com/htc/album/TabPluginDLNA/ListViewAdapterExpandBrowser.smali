.class public Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;
.super Lcom/htc/widget/MoreExpandableBaseAdapter;
.source "ListViewAdapterExpandBrowser.java"


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field protected mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/LinkedList;)V
    .locals 4
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p2, itemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;>;"
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/MoreExpandableBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/LinkedList;)V

    .line 25
    const-string v0, "ExpandListView"

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->LOG_TAG:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    .line 36
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->mContext:Landroid/content/Context;

    .line 37
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->mInflater:Landroid/view/LayoutInflater;

    .line 39
    new-instance v0, Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDLNA/ImageProvider;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    .line 40
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    sget v3, Lcom/htc/opensense2/album/cache/CacheManager;->MAX_LISTVIEW_MEM_BUFFER:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->Initialize(Landroid/content/Context;ZI)Z

    .line 56
    return-void
.end method


# virtual methods
.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 63
    if-nez p4, :cond_2

    .line 64
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f03002b

    invoke-virtual {v5, v6, p5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 69
    .local v4, view:Landroid/view/View;
    :goto_0
    invoke-static {p1, p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getPosition(II)I

    move-result v2

    .line 70
    .local v2, position:I
    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    .line 72
    .local v1, item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    const v5, 0x7f090055

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    .line 73
    .local v3, text:Lcom/htc/widget/HtcListItem2LineText;
    const v5, 0x7f090054

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemTileImage;

    .line 74
    .local v0, icon:Lcom/htc/widget/HtcListItemTileImage;
    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 76
    if-eqz v1, :cond_1

    .line 78
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 79
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 81
    :cond_0
    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 83
    const-string v5, "0"

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetFileType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 85
    const v5, 0x7f020019

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageResource(I)V

    .line 89
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcListItemTileImage;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 104
    :cond_1
    :goto_1
    return-object v4

    .line 66
    .end local v0           #icon:Lcom/htc/widget/HtcListItemTileImage;
    .end local v1           #item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    .end local v2           #position:I
    .end local v3           #text:Lcom/htc/widget/HtcListItem2LineText;
    .end local v4           #view:Landroid/view/View;
    :cond_2
    move-object v4, p4

    .restart local v4       #view:Landroid/view/View;
    goto :goto_0

    .line 91
    .restart local v0       #icon:Lcom/htc/widget/HtcListItemTileImage;
    .restart local v1       #item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    .restart local v2       #position:I
    .restart local v3       #text:Lcom/htc/widget/HtcListItem2LineText;
    :cond_3
    const-string v5, "2"

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetFileType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "4"

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetFileType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 94
    :cond_4
    const v5, 0x7f0a00d3

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 95
    const v5, 0x2080063

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageResource(I)V

    goto :goto_1

    .line 97
    :cond_5
    const-string v5, "UNKNOWN"

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetFileType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 99
    const v5, 0x7f0a00d7

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 100
    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    goto :goto_1
.end method

.method public getChildren(ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/LinkedList;
    .locals 1
    .parameter "groupPosition"
    .parameter "self"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ")",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 112
    .local v0, childList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;>;"
    return-object v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 120
    if-nez p3, :cond_1

    .line 121
    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f03002b

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 126
    .local v5, view:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    .line 128
    .local v2, item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    const v6, 0x7f090055

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    .line 129
    .local v3, text:Lcom/htc/widget/HtcListItem2LineText;
    const v6, 0x7f090054

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemTileImage;

    .line 130
    .local v0, icon:Lcom/htc/widget/HtcListItemTileImage;
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 131
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 135
    if-eqz v2, :cond_0

    .line 137
    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetParentID()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetContainerName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 140
    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetContainerName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 141
    const v6, 0x7f020019

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageResource(I)V

    .line 145
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListItemTileImage;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 175
    :cond_0
    :goto_1
    return-object v5

    .line 123
    .end local v0           #icon:Lcom/htc/widget/HtcListItemTileImage;
    .end local v2           #item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    .end local v3           #text:Lcom/htc/widget/HtcListItem2LineText;
    .end local v5           #view:Landroid/view/View;
    :cond_1
    move-object v5, p3

    .restart local v5       #view:Landroid/view/View;
    goto :goto_0

    .line 150
    .restart local v0       #icon:Lcom/htc/widget/HtcListItemTileImage;
    .restart local v2       #item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    .restart local v3       #text:Lcom/htc/widget/HtcListItem2LineText;
    :cond_2
    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 153
    const/4 v4, 0x0

    .line 154
    .local v4, thumbBmp:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetImg()Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_4

    .line 156
    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetImgPath()Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, imgPath:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 159
    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, p1, v1}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->getImageBitmap(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 167
    .end local v1           #imgPath:Ljava/lang/String;
    :goto_2
    if-eqz v4, :cond_5

    .line 168
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 161
    .restart local v1       #imgPath:Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->LOG_TAG:Ljava/lang/String;

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "Name:"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, ", imgPath:"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object v1, v7, v8

    const/4 v8, 0x4

    const-string v9, ", groupPosition:"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->w2(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 164
    .end local v1           #imgPath:Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->LOG_TAG:Ljava/lang/String;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "Name:"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, ", item.GetImg:null"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->w2(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 170
    :cond_5
    const v6, 0x7f02001a

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageResource(I)V

    goto :goto_1
.end method
